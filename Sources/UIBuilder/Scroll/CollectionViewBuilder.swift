//
//  CollectionViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine

public class CollectionViewBuilder: ScrollViewBuilder<UICollectionView> {
    
    public override init(view: UICollectionView = .init(frame: .init(), collectionViewLayout: .init())) {
        super.init(view: view)
    }
    
    public func setDataSource(_ dataSource: UICollectionViewDataSource) -> Self {
        view.dataSource = dataSource
        return self
    }
    
    public func setDelegate(_ delegate: UICollectionViewDelegate) -> Self {
        view.delegate = delegate
        return self
    }
    
    public func registerCell<T: UICollectionViewCell>(_ cellClass: T.Type, identifier: String) -> Self {
        view.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    public func setFlowLayout(_ layout: UICollectionViewFlowLayout) -> Self {
        view.collectionViewLayout = layout
        return self
    }
    
    public func setIsPagingEnabled(_ enabled: Bool) -> Self {
        view.isPagingEnabled = enabled
        return self
    }
    
    public func registerView(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> Self {
        view.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    public func bind<T>(
        items: Published<[T]>.Publisher,
        _ cancellables: inout Set<AnyCancellable>,
        _ builder: @escaping (UICollectionView, IndexPath, T) -> UICollectionViewCell
    ) -> Self {
        items.receive(on: DispatchQueue.main)
            .sink(receiveValue: view.items(builder))
            .store(in: &cancellables)
        return self
    }
}

extension UICollectionView {
    
    func items<Element>(
        _ builder: @escaping (UICollectionView, IndexPath, Element) -> UICollectionViewCell
    ) -> ([Element]) -> Void {
        let dataSource = CombineCollectionViewDataSource(builder: builder)
        return { dataSource.pushElements($0, to: self) }
    }
}

class CombineCollectionViewDataSource<Element>: NSObject, UICollectionViewDataSource {
    
    let build: (UICollectionView, IndexPath, Element) -> UICollectionViewCell
    var elements: [Element] = []

    init(builder: @escaping (UICollectionView, IndexPath, Element) -> UICollectionViewCell) {
        build = builder
        super.init()
    }

    func pushElements(_ elements: [Element], to collectionView: UICollectionView) {
        collectionView.dataSource = self
        self.elements = elements
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        elements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        build(collectionView, indexPath, elements[indexPath.row])
    }
}
#endif
