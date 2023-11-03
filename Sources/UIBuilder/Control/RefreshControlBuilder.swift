//
//  RefreshControlBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

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
    
    public func setRefreshPublisher(_ cancellables: inout Set<AnyCancellable>,_ action: @escaping () -> Void) -> Self {
        view.controlPublisher(for: .valueChanged)
            .sink { _ in
                action()
            }.store(in: &cancellables)
        return self
    }
}
#endif
