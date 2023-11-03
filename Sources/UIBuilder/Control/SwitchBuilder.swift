//
//  SwitchBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class SwitchBuilder: UIBuilder<UISwitch> {
    
    public func setOn(_ isOn: Bool) -> Self {
        view.isOn = isOn
        return self
    }
    
    public func setOnTintColor(_ color: UIColor?) -> Self {
        view.onTintColor = color
        return self
    }
    
    public func setThumbTintColor(_ color: UIColor?) -> Self {
        view.thumbTintColor = color
        return self
    }
    
    public func setOnImage(_ image: UIImage?) -> Self {
        view.onImage = image
        return self
    }
    
    public func setOffImage(_ image: UIImage?) -> Self {
        view.offImage = image
        return self
    }
}
