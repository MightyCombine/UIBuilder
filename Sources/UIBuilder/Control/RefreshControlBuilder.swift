//
//  RefreshControlBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class RefreshControlBuilder {
    
    private var refreshControl: UIRefreshControl
    
    public init() {
        self.refreshControl = UIRefreshControl()
    }
    
    public func setTintColor(_ color: UIColor) -> Self {
        refreshControl.tintColor = color
        return self
    }
    
    public func setAttributedTitle(_ attributedTitle: NSAttributedString?) -> Self {
        refreshControl.attributedTitle = attributedTitle
        return self
    }
    
    public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        refreshControl.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    public func setRefreshing(_ refreshing: Bool) -> Self {
        if refreshing {
            refreshControl.beginRefreshing()
        } else {
            refreshControl.endRefreshing()
        }
        return self
    }
    
    public func setBackgroundColor(_ color: UIColor) -> Self {
        refreshControl.backgroundColor = color
        return self
    }
    
    public func build() -> UIRefreshControl {
        return refreshControl
    }
}

