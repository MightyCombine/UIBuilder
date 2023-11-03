//
//  TableViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class TableViewBuilder: UIBuilder<UITableView> {
    
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
    
    public func registerCell<T: UITableViewCell>(cellClass: T.Type, reuseIdentifier: String) -> Self {
        view.register(cellClass, forCellReuseIdentifier: reuseIdentifier)
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
