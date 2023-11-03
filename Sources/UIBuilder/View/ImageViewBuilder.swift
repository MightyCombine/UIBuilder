//
//  ImageViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class ImageViewBuilder: UIBuilder<UIImageView> {

    public func setImage(_ image: UIImage?) -> Self {
        view.image = image
        return self
    }

    public func setTintColor(_ color: UIColor) -> Self {
        view.tintColor = color
        return self
    }

    public func setAnimationImages(_ images: [UIImage]) -> Self {
        view.animationImages = images
        return self
    }

    public func setAnimationDuration(_ duration: TimeInterval) -> Self {
        view.animationDuration = duration
        return self
    }

    public func setAnimationRepeatCount(_ count: Int) -> Self {
        view.animationRepeatCount = count
        return self
    }

    public func startAnimating() -> Self {
        view.startAnimating()
        return self
    }

    public func stopAnimating() -> Self {
        view.stopAnimating()
        return self
    }

    public func setIsHighlighted(_ isHighlighted: Bool) -> Self {
        view.isHighlighted = isHighlighted
        return self
    }

    public func setHighlightedImage(_ image: UIImage?) -> Self {
        view.highlightedImage = image
        return self
    }

    public func setAdjustsImageSizeForAccessibilityContentSizeCategory(_ adjusts: Bool) -> Self {
        view.adjustsImageSizeForAccessibilityContentSizeCategory = adjusts
        return self
    }

    public func setPreferSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?) -> Self {
        view.preferredSymbolConfiguration = configuration
        return self
    }
}
