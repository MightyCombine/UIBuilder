//
//  UIBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class UIBuilder<T: UIView> {
    
    var view: T

    public init(view: T) {
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
    
    public func setSuperView(_ view: UIView) -> Self {
        view.addSubview(self.view)
        return self
    }
    
    public func setTranslatesAuto(_ state: Bool = false) -> Self {
        view.translatesAutoresizingMaskIntoConstraints = state
        return self
    }
    
    public func setContentMode(_ contentMode: UIView.ContentMode) -> Self {
        view.contentMode = contentMode
        return self
    }
}
