//
//  CollectionViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit

public class CollectionViewBuilder: ScrollViewBuilder<UICollectionView> {
    
    public func setDataSource(_ dataSource: UICollectionViewDataSource) -> Self {
        view.dataSource = dataSource
        return self
    }
    
    public func setDelegate(_ delegate: UICollectionViewDelegate) -> Self {
        view.delegate = delegate
        return self
    }
    
    public func registerCell<T: UICollectionViewCell>(_ cellClass: T.Type, _ reuseIdentifier: String) -> Self {
        view.register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
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
}
#endif
