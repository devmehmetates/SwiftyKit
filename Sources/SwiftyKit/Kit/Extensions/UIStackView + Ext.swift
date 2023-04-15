//
//  UIStackView + Ext.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

/// An extension on `UIStackView` that provides a fluent API for configuring the stack view's properties.
public extension UIStackView {
    
    /// Adds the given `UIView` as an arranged subview of the stack view.
    ///
    /// - Parameter view: The `UIView` to add as an arranged subview.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func addArrangedView(_ view: UIView) -> Self {
        self.addArrangedSubview(view)
        return self
    }
    
    /// Adds the given `UIView` objects as arranged subviews of the stack view.
    ///
    /// - Parameter views: The `UIView` objects to add as arranged subviews.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func addArrangedViews(_ views: UIView...) -> Self {
        views.forEach {
            self.addArrangedSubview($0)
        }
        return self
    }
    
    /// Sets the axis along which the arranged subviews are laid out.
    ///
    /// - Parameter axis: The `NSLayoutConstraint.Axis` value representing the layout axis.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    /// Sets the distribution of the arranged subviews along the stack view's layout axis.
    ///
    /// - Parameter distribution: The `UIStackView.Distribution` value representing the distribution.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    /// Sets the spacing between the arranged subviews.
    ///
    /// - Parameter spacing: The spacing value between arranged subviews.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    /// Sets the alignment of the arranged subviews perpendicular to the stack view's layout axis.
    ///
    /// - Parameter alignment: The `UIStackView.Alignment` value representing the alignment.
    /// - Returns: The stack view itself for further configuration.
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    /// Sets the layout margins for the view.
    /// - Parameters:
    ///   - margins: The set of edges to apply margins to.
    ///   - size: The size of the margins.
    /// - Returns: The modified view.
    @discardableResult
    func setLayoutMargins(_ margins: Edges.Set, _ size: CGFloat) -> Self {
        // Set the layoutMargins property using the EdgesHelper class.
        self.layoutMargins = EdgesHelper.edgeInsets(for: margins, withSize: size)
        return self
    }
}
