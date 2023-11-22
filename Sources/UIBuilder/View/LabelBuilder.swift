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
    
    /// 부분 색상 강조
    /// - Parameter Color : 강조할 색상
    /// - Parameter pointText : 강조할 텍스트
    public func setPointTextColor(_ pointText: String, color: UIColor) -> Self {
        guard let content = view.text else { return self }
        
        let attributedStr = NSMutableAttributedString(string: content)
        attributedStr.addAttribute(.foregroundColor,
                                   value: color,
                                   range: (content as NSString).range(of: pointText))
        
        self.view.attributedText = attributedStr

        return self
    }
    
    public func setLineHeight(_ lineHeight: CGFloat) -> Self {
        guard let text = view.text else { return self }
            let style = NSMutableParagraphStyle()
            style.maximumLineHeight = lineHeight
            style.minimumLineHeight = lineHeight
        
            let attributes: [NSAttributedString.Key: Any] = [
                .paragraphStyle: style,
                .baselineOffset: (lineHeight - view.font.lineHeight) / 4
            ]
            
            let attrString = NSAttributedString(string: text,
                                                attributes: attributes)
            view.attributedText = attrString
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
