//
//  TableViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

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
    
    public func registerCell<T: UITableViewCell>(cellClass: T.Type, reuseIdentifier: String) -> Self {
        view.register(cellClass, forCellReuseIdentifier: reuseIdentifier)
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
}
