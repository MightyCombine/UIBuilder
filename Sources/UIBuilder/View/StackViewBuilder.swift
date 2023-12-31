//
//  StackViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

#if canImport(UIKit)
import UIKit

public class StackViewBuilder: UIBuilder<UIStackView> {
    
    public func setCustomSpacing(_ spacing: CGFloat, after: UIView) -> Self {
        self.view.setCustomSpacing(spacing, after: after)
        return self
    }
    
    public func addArrangedSubviews(_ views: UIView...) -> Self {
        views.forEach { [weak self] in
            self?.view.addArrangedSubview($0)
        }
        return self
    }
    
    public func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        view.axis = axis
        return self
    }
    
    public func setDistribution(_ distribution: UIStackView.Distribution) -> Self {
        view.distribution = distribution
        return self
    }
    
    public func setAlignment(_ alignment: UIStackView.Alignment) -> Self {
        view.alignment = alignment
        return self
    }
    
    public func setSpacing(_ spacing: CGFloat) -> Self {
        view.spacing = spacing
        return self
    }
}
#endif
