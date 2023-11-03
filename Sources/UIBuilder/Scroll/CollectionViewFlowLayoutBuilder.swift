//
//  CollectionViewFlowLayoutBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit

public class CollectionViewFlowLayoutBuilder {
    
    private var layout: UICollectionViewFlowLayout
    
    public init(layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()) {
        self.layout = layout
    }
    
    public func setItemSize(_ size: CGSize) -> Self {
        layout.itemSize = size
        return self
    }
    
    public func setEstimatedItemSize(_ size: CGSize) -> Self {
        layout.estimatedItemSize = size
        return self
    }
    
    public func setMinimumLineSpacing(_ spacing: CGFloat) -> Self {
        layout.minimumLineSpacing = spacing
        return self
    }
    
    public func setMinimumInteritemSpacing(_ spacing: CGFloat) -> Self {
        layout.minimumInteritemSpacing = spacing
        return self
    }
    
    public func setSectionInset(_ inset: UIEdgeInsets) -> Self {
        layout.sectionInset = inset
        return self
    }
    
    public func setScrollDirection(_ direction: UICollectionView.ScrollDirection) -> Self {
        layout.scrollDirection = direction
        return self
    }
    
    public func setHeaderReferenceSize(_ size: CGSize) -> Self {
        layout.headerReferenceSize = size
        return self
    }
    
    public func setFooterReferenceSize(_ size: CGSize) -> Self {
        layout.footerReferenceSize = size
        return self
    }
    
    public func setSectionHeadersPinToVisibleBounds(_ pin: Bool) -> Self {
        layout.sectionHeadersPinToVisibleBounds = pin
        return self
    }
    
    public func setSectionFootersPinToVisibleBounds(_ pin: Bool) -> Self {
        layout.sectionFootersPinToVisibleBounds = pin
        return self
    }
    
    public func build() -> UICollectionViewFlowLayout {
        return layout
    }
}
#endif
