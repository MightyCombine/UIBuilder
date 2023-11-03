//
//  UIBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

public class UIBuilder<T: UIView> {
    
    var view: T

    public init(view: T = .init()) {
        self.view = view
    }

    public func build() -> T {
        return view
    }
}

extension UIBuilder {

    public func setBackgroundColor(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }
    
    public func setCornerRadius(_ radius: CGFloat) -> Self {
        view.layer.cornerRadius = radius
        return self
    }
    
    public func setBorderWidth(_ width: CGFloat) -> Self {
        view.layer.borderWidth = width
        return self
    }
    
    public func setBorderColor(_ color: UIColor) -> Self {
        view.layer.borderColor = color.cgColor
        return self
    }
    
    public func setAlpha(_ alpha: CGFloat) -> Self {
        view.alpha = alpha
        return self
    }
    
    public func addToSuperView(_ view: UIView) -> Self {
        view.addSubview(self.view)
        return self
    }
    
    public func setTranslatesAutoresizing(_ state: Bool = false) -> Self {
        view.translatesAutoresizingMaskIntoConstraints = state
        return self
    }
    
    public func setContentMode(_ contentMode: UIView.ContentMode) -> Self {
        view.contentMode = contentMode
        return self
    }
    
    public func setIsHidden(_ state: Bool) -> Self {
        view.isHidden = state
        return self
    }
    
    public func setIsUserInteractionEnabled(_ state: Bool) -> Self {
        view.isUserInteractionEnabled = state
        return self
    }
    
    public func setTapPublusher(_ cancellables: inout Set<AnyCancellable>,_ action: @escaping () -> Void) -> Self {
        view.tapGesturePublisher.sink { _ in
            action()
        }.store(in: &cancellables)
        return self
    }
}
#endif
