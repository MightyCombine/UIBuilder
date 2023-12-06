//
//  TableViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine

public class TableViewBuilder: ScrollViewBuilder<UITableView> {
    
    public func setDataSource(_ dataSource: UITableViewDataSource) -> Self {
        view.dataSource = dataSource
        return self
    }
    
    public func setDelegate(_ delegate: UITableViewDelegate) -> Self {
        view.delegate = delegate
        return self
    }
    
    public func setRowHeight(_ height: CGFloat) -> Self {
        view.rowHeight = height
        return self
    }
    
    public func setSectionHeaderHeight(_ height: CGFloat) -> Self {
        view.sectionHeaderHeight = height
        return self
    }
    
    public func setSectionFooterHeight(_ height: CGFloat) -> Self {
        view.sectionFooterHeight = height
        return self
    }
    
    public func setSeparatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
        view.separatorStyle = style
        return self
    }
    
    public func setSeparatorColor(_ color: UIColor?) -> Self {
        view.separatorColor = color
        return self
    }
    
    public func registerCell<T: UITableViewCell>(_ cellClass: T.Type, identifier: String) -> Self {
        view.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    public func setDropDelegate(_ delegate: UITableViewDropDelegate) -> Self {
        view.dropDelegate = delegate
        return self
    }
    
    public func setDragDelegate(_ delegate: UITableViewDragDelegate) -> Self {
        view.dragDelegate = delegate
        return self
    }
    
    public func setDragInteractionEnabled(_ enabled: Bool) -> Self {
        view.dragInteractionEnabled = enabled
        return self
    }
    
    public func registerView<T: UITableViewHeaderFooterView>(_ headerFooterClass: T.Type, identifier: String) -> Self {
        view.register(headerFooterClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @available(iOS 15.0, *)
    public func setSectionHeaderTopPadding(_ padding: CGFloat) -> Self {
        view.sectionHeaderTopPadding = padding
        return self
    }
    
    public func bind<T>(
        items: Published<[T]>.Publisher,
        _ cancellables: inout Set<AnyCancellable>,
        _ builder: @escaping (UITableView, IndexPath, T) -> UITableViewCell
    ) -> Self {
        items.receive(on: DispatchQueue.main)
            .sink(receiveValue: view.items(builder))
            .store(in: &cancellables)
        return self
    }
}

extension UITableView {
    
    func items<Element>(
        _ builder: @escaping (UITableView, IndexPath, Element) -> UITableViewCell
    ) -> ([Element]) -> Void {
        let dataSource = CombineTableViewDataSource(builder: builder)
        return { dataSource.pushElements($0, to: self) }
    }
}

class CombineTableViewDataSource<Element>: NSObject, UITableViewDataSource {

    let build: (UITableView, IndexPath, Element) -> UITableViewCell
    var elements: [Element] = []

    init(builder: @escaping (UITableView, IndexPath, Element) -> UITableViewCell) {
        build = builder
        super.init()
    }

    func pushElements(_ elements: [Element], to tableView: UITableView) {
        tableView.dataSource = self
        self.elements = elements
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        elements.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        build(tableView, indexPath, elements[indexPath.row])
    }
}
#endif
