//
//  TextViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

public class TextViewBuilder: UIBuilder<UITextView> {

    public func setText(_ text: String?) -> Self {
        view.text = text
        return self
    }

    public func setFont(_ font: UIFont?) -> Self {
        view.font = font
        return self
    }

    public func setTextColor(_ color: UIColor?) -> Self {
        view.textColor = color
        return self
    }

    public func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        view.textAlignment = alignment
        return self
    }

    public func setIsEditable(_ isEditable: Bool) -> Self {
        view.isEditable = isEditable
        return self
    }

    public func setIsSelectable(_ isSelectable: Bool) -> Self {
        view.isSelectable = isSelectable
        return self
    }

    public func setDelegate(_ delegate: UITextViewDelegate?) -> Self {
        view.delegate = delegate
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

    public func setSecureTextEntry(_ isSecure: Bool) -> Self {
        view.isSecureTextEntry = isSecure
        return self
    }

    public func setDataDetectorTypes(_ types: UIDataDetectorTypes) -> Self {
        view.dataDetectorTypes = types
        return self
    }

    public func setLinkTextAttributes(_ attributes: [NSAttributedString.Key : Any]?) -> Self {
        view.linkTextAttributes = attributes
        return self
    }

    public func setAllowsEditingTextAttributes(_ allows: Bool) -> Self {
        view.allowsEditingTextAttributes = allows
        return self
    }

    public func setAttributedText(_ attributedText: NSAttributedString?) -> Self {
        view.attributedText = attributedText
        return self
    }

    public func setTypingAttributes(_ attributes: [NSAttributedString.Key : Any]) -> Self {
        view.typingAttributes = attributes
        return self
    }

    public func setScrollEnabled(_ isEnabled: Bool) -> Self {
        view.isScrollEnabled = isEnabled
        return self
    }

    public func setShowsHorizontalScrollIndicator(_ shows: Bool) -> Self {
        view.showsHorizontalScrollIndicator = shows
        return self
    }

    public func setShowsVerticalScrollIndicator(_ shows: Bool) -> Self {
        view.showsVerticalScrollIndicator = shows
        return self
    }
    
    public func setTextPublisher(_ store: inout Set<AnyCancellable>, _ action: @escaping (String) -> Void) -> Self {
        self.view.textPublisher.sink { value in
            action(value)
        }.store(in: &store)
        return self
    }
}
#endif
