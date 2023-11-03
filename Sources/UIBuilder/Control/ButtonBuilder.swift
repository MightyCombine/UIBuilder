//
//  ButtonBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit
import Combine
import MightyCombine

public class ButtonBuilder: UIBuilder<UIButton> {
    
    public func setTitle(_ title: String, for state: UIControl.State) -> Self {
        view.setTitle(title, for: state)
        return self
    }
    
    public func setControlPublisher(
        event: UIControl.Event = .touchUpInside,
        _ store: inout Set<AnyCancellable>,
        _ action: @escaping () -> Void
    ) -> Self {
        view.controlPublisher(for: event).sink { _ in
            action()
        }.store(in: &store)
        return self
    }

    public func setTitleColor(_ color: UIColor, for state: UIControl.State) -> Self {
        view.setTitleColor(color, for: state)
        return self
    }

    public func setTitleFont(_ font: UIFont) -> Self {
        view.titleLabel?.font = font
        return self
    }

    public func setImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        view.setImage(image, for: state)
        return self
    }

    public func setContentEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        view.contentEdgeInsets = insets
        return self
    }

    public func setEnabled(_ isEnabled: Bool) -> Self {
        view.isEnabled = isEnabled
        return self
    }

    public func setShowsTouchWhenHighlighted(_ shows: Bool) -> Self {
        view.showsTouchWhenHighlighted = shows
        return self
    }
}
#endif
