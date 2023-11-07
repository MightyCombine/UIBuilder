//
//  SelfBuildable.swift
//
//
//  Created by 김인섭 on 11/7/23.
//

#if canImport(UIKit)
import UIKit

public protocol SelfBuildable { }

public extension SelfBuildable where Self : UIView {
    
    static func build(_ builder: (Self) -> Void) -> Self {
        let view = Self()
        view.translatesAutoresizingMaskIntoConstraints = false
        builder(view)
        return view
    }
}

public extension UIView {
    
    func addToSuperView(_ view: UIView) {
        view.addSubview(self)
    }
}

extension UIView: SelfBuildable { }
#endif
