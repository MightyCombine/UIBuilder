//
//  InitBuilder.swift
//
//
//  Created by 김인섭 on 11/7/23.
//

#if canImport(UIKit)
import UIKit

public extension UIView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
    
    func addToSuperView(_ view: UIView) {
        view.addSubview(self)
    }
}

public extension UIButton {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UIRefreshControl {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UISwitch {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UICollectionView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UITableView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UITextView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UITextField {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UIImageView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UILabel {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}

public extension UIStackView {
    
    convenience init(builder: (Self) -> Void) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}
#endif
