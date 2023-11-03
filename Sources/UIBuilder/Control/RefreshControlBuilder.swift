//
//  RefreshControlBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class RefreshControlBuilder: UIBuilder<UIRefreshControl> {
    
    public func setTintColor(_ color: UIColor) -> Self {
        view.tintColor = color
        return self
    }
    
    public func setAttributedTitle(_ attributedTitle: NSAttributedString?) -> Self {
        view.attributedTitle = attributedTitle
        return self
    }
    
    public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        view.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    public func setRefreshing(_ refreshing: Bool) -> Self {
        if refreshing {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
        return self
    }
}
