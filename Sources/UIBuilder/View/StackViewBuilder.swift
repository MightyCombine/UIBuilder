//
//  StackViewBuilder.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class StackViewBuilder: UIBuilder<UIStackView> {
    
    public func addArrangedSubview(_ view: UIView) -> Self {
        self.view.addArrangedSubview(view)
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
