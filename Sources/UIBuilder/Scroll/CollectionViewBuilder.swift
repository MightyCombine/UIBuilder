//
//  CollectionViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class CollectionViewBuilder: UIBuilder<UICollectionView> {
    
    public func setDataSource(_ dataSource: UICollectionViewDataSource) -> Self {
        view.dataSource = dataSource
        return self
    }
    
    public func setDelegate(_ delegate: UICollectionViewDelegate) -> Self {
        view.delegate = delegate
        return self
    }
    
    public func registerCell<T: UICollectionViewCell>(cellClass: T.Type, reuseIdentifier: String) -> Self {
        view.register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
        return self
    }
    
    public func setFlowLayout(_ layout: UICollectionViewFlowLayout) -> Self {
        view.collectionViewLayout = layout
        return self
    }
    
    // Scroll
    public func setShowsVerticalScrollIndicator(_ show: Bool) -> Self {
        view.showsVerticalScrollIndicator = show
        return self
    }
    
    public func setShowsHorizontalScrollIndicator(_ show: Bool) -> Self {
        view.showsHorizontalScrollIndicator = show
        return self
    }
    
    public func setAlwaysBounceVertical(_ state: Bool) -> Self {
        view.alwaysBounceVertical = state
        return self
    }
    
    public func setAlwaysBounceHorizontal(_ state: Bool) -> Self {
        view.alwaysBounceHorizontal = state
        return self
    }
    
    public func setRefreshControl(_ refresh: UIRefreshControl) -> Self {
        view.refreshControl = refresh
        return self
    }
}
