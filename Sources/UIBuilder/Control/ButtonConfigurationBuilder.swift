//
//  ButtonConfigurationBuilder.swift
//
//
//  Created by 현수빈 on 11/17/23.
//

import Foundation
import UIKit.UIButton

@available(iOS 15.0, *)
public class ButtonConfigurationBuilder {
    
    private var configuration: UIButton.Configuration
    
    public func build() -> UIButton.Configuration {
        return configuration
    }
    
    public init() {
        configuration = UIButton.Configuration.filled()
    }
    
    public func setImage(_ image: UIImage) -> Self {
        configuration.image = image
        return self
    }
    
    public func setContentInsets(_ inset: NSDirectionalEdgeInsets) -> Self {
        configuration.contentInsets = inset
        return self
    }
    
    public func setBackgroundCornerRadius(_ radius: CGFloat) -> Self {
        configuration.background.cornerRadius = radius
        return self
    }
    
    public func setBackground(_ backgroundClosure: @escaping (() -> UIBackgroundConfiguration) ) -> Self {
        configuration.background = backgroundClosure()
        return self
    }
    
    
    public func setImagePadding(_ padding: CGFloat) -> Self {
        configuration.imagePadding = padding
        return self
    }
    
    public func setImagePlacement(_ imagePlacement: NSDirectionalRectEdge) -> Self {
        configuration.imagePlacement = imagePlacement
        return self
    }
    
    public func setAttributedTitle(_ attributedString: AttributedString) -> Self {
        configuration.attributedTitle = attributedString
        return self
    }
    
    
    
}
