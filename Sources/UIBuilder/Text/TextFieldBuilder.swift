//
//  TextFieldBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

public class TextFieldBuilder: UIBuilder<UITextField> {
    
    public func setText(_ text: String?) -> Self {
        view.text = text
        return self
    }
    
    public func setTextColor(_ color: UIColor) -> Self {
        view.textColor = color
        return self
    }
    
    public func setFont(_ font: UIFont) -> Self {
        view.font = font
        return self
    }
    
    public func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        view.textAlignment = alignment
        return self
    }
    
    public func setPlaceholder(_ placeholder: String?) -> Self {
        view.placeholder = placeholder
        return self
    }
    
    public func setAttributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        view.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    public func setBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        view.borderStyle = style
        return self
    }
    
    public func setKeyboardType(_ type: UIKeyboardType) -> Self {
        view.keyboardType = type
        return self
    }
    
    public func setReturnKeyType(_ type: UIReturnKeyType) -> Self {
        view.returnKeyType = type
        return self
    }
    
    public func setIsSecureTextEntry(_ isSecure: Bool) -> Self {
        view.isSecureTextEntry = isSecure
        return self
    }
    
    public func setAutocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        view.autocapitalizationType = type
        return self
    }
    
    public func setAutocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        view.autocorrectionType = type
        return self
    }
    
    public func setSpellCheckingType(_ type: UITextSpellCheckingType) -> Self {
        view.spellCheckingType = type
        return self
    }
    
    public func setEnablesReturnKeyAutomatically(_ enables: Bool) -> Self {
        view.enablesReturnKeyAutomatically = enables
        return self
    }
    
    public func setClearButtonMode(_ mode: UITextField.ViewMode) -> Self {
        view.clearButtonMode = mode
        return self
    }
    
    public func setLeftView(_ view: UIView?) -> Self {
        self.view.leftView = view
        return self
    }
    
    public func setLeftViewMode(_ mode: UITextField.ViewMode) -> Self {
        self.view.leftViewMode = mode
        return self
    }
    
    public func setRightView(_ view: UIView?) -> Self {
        self.view.rightView = view
        return self
    }
    
    public func setRightViewMode(_ mode: UITextField.ViewMode) -> Self {
        self.view.rightViewMode = mode
        return self
    }
    
    public func setDelegate(_ delegate: UITextFieldDelegate) -> Self {
        view.delegate = delegate
        return self
    }
    
    public func setLeftViewPadding(_ padding: CGFloat) -> Self {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.view.frame.height))
        self.view.leftView = paddingView
        self.view.leftViewMode = .always
        return self
    }
    
    public func setRightViewPadding(_ padding: CGFloat) -> Self {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.view.frame.height))
        self.view.rightView = paddingView
        self.view.rightViewMode = .always
        return self
    }
    
    public func setTextPublisher(_ store: inout Set<AnyCancellable>,_ action: @escaping (String) -> Void) -> Self {
        self.view.textPublisher.sink { value in
            action(value)
        }.store(in: &store)
        return self
    }
}
#endif
