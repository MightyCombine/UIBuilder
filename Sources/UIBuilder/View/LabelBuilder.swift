//
//  LabelBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit

public class LabelBuilder: UIBuilder<UILabel> {
    
    public func setText(_ text: String) -> Self {
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
    
    public func setNumberOfLines(_ numberOfLines: Int) -> Self {
        view.numberOfLines = numberOfLines
        return self
    }
    
    public func setAttributedText(_ attributedText: NSAttributedString) -> Self {
        view.attributedText = attributedText
        return self
    }
    
    public func setLineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        view.lineBreakMode = lineBreakMode
        return self
    }
    
    public func setAdjustsFontSizeToFitWidth(_ adjusts: Bool) -> Self {
        view.adjustsFontSizeToFitWidth = adjusts
        return self
    }
    
    public func setMinimumScaleFactor(_ factor: CGFloat) -> Self {
        view.minimumScaleFactor = factor
        return self
    }
    
    public func setAllowsDefaultTighteningForTruncation(_ allows: Bool) -> Self {
        if #available(iOS 9.0, *) {
            view.allowsDefaultTighteningForTruncation = allows
        }
        return self
    }
    
    public func setPreferredMaxLayoutWidth(_ width: CGFloat) -> Self {
        view.preferredMaxLayoutWidth = width
        return self
    }
    
    public func setBaselineAdjustment(_ adjustment: UIBaselineAdjustment) -> Self {
        view.baselineAdjustment = adjustment
        return self
    }
    
    public func setHighlightedTextColor(_ color: UIColor) -> Self {
        view.highlightedTextColor = color
        return self
    }
    
    public func setIsHighlighted(_ highlighted: Bool) -> Self {
        view.isHighlighted = highlighted
        return self
    }
    
    public func setShadowColor(_ color: UIColor?) -> Self {
        view.shadowColor = color
        return self
    }
    
    public func setShadowOffset(_ offset: CGSize) -> Self {
        view.shadowOffset = offset
        return self
    }
    
    public func setUserInteractionEnabled(_ enabled: Bool) -> Self {
        view.isUserInteractionEnabled = enabled
        return self
    }
}
#endif
