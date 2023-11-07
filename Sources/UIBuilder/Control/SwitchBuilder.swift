//
//  SwitchBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

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
    
    public func setSwitchPublisher(
        _ cancellables: inout Set<AnyCancellable>,
        _ action: @escaping (Bool) -> Void
    ) -> Self {
        self.view.switchPublisher.sink {
            action($0)
        }.store(in: &cancellables)
        return self
    }
    
    @available(iOS 14.0, *)
    public func bind(
        to published: inout Published<Bool>.Publisher
    ) -> Self {
        view.switchPublisher.assign(to: &published)
        return self
    }
}
#endif
