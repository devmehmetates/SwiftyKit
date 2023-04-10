//
//  StackBuilder.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

final class StackBuilder: UIStackView, ViewBuilderProtocol {
    var content: UIView { self }

    @discardableResult
    func addArrangedSubview(_ view: ViewBuilderProtocol) -> Self {
        self.addArrangedSubview(view.content)
        return self
    }
    
    @discardableResult
    func addArrangedSubviews(_ views: ViewBuilderProtocol...) -> Self {
        for view in views {
            self.addArrangedSubview(view.content)
        }
        return self
    }
    
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
}
