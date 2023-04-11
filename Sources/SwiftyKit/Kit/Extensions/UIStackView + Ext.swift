//
//  UIStackView + Ext.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

extension UIStackView {    
    @discardableResult
    func addArrangedView(_ view: UIView) -> Self {
        self.addArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func addArrangedViews(_ views: UIView...) -> Self {
        views.forEach {
            self.addArrangedSubview($0)
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
