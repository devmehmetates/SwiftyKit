//
//  ViewBuilderProtocol.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import UIKit

// MARK: - Base
public extension UIView {
    /// Adds the receiver view as a subview to the specified view.
    ///
    /// - Parameter view: The superview to add the receiver as a subview to.
    /// - Returns: The modified receiver view.
    @discardableResult
    @available(*, deprecated, renamed: "embedTo", message: "")
    func addView(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
    
    /// Adds the receiver view as a subview to the specified view.
    ///
    /// - Parameter view: The superview to add the receiver as a subview to.
    /// - Returns: The modified receiver view.
    func embedTo(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
}

// MARK: - Padding
public extension UIView {
    /// Adds padding to the edges of the view.
    ///
    /// - Parameters:
    ///   - edges: The edges to which the padding should be applied.
    ///   - padding: The amount of padding to apply to the edges.
    /// - Returns: A new `UIView` instance with the original view as a subview and padded edges.
    @discardableResult
    func padding(_ edges: Edges.Set = .all, padding: CGFloat = 16) -> UIView {
        let view = UIView()
        view.addSubview(self)
        self.fillToSuperView(edges, padding)
        return view
    }
}

// MARK: - Frame & Size
public extension UIView {
    /// Constrains the width of the view to be equal to the given width.
    ///
    /// - Parameter width: The width to constrain the view to.
    /// - Returns: The modified view instance.
    @discardableResult
    func width(_ width: CGFloat) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }

    /// Constrains the width of the view to be equal to the width of its superview.
    ///
    /// - Returns: The modified view instance.
    @discardableResult
    func widthToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalTo: superview.widthAnchor).isActive = true
        return self
    }

    /// Sets the height of the view to a specific value.
    ///
    /// - Parameter height: The height value to set.
    /// - Returns: The modified view instance.
    @discardableResult
    func height(_ height: CGFloat) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }

    /// Sets the height of the view to match its superview's height.
    ///
    /// - Returns: The modified view instance.
    @discardableResult
    func heightToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalTo: superview.heightAnchor).isActive = true
        return self
    }

    /// Sets the frame size of the view.
    /// - Parameters:
    ///   - width: The width to set for the view's frame.
    ///   - height: The height to set for the view's frame.
    /// - Returns: The modified view instance.
    @discardableResult
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        if let width { self.width(width) }
        if let height { self.height(height) }
        return self
    }
}

// MARK: - Center
public extension UIView {
    /// Centers the view to the given view.
    ///
    /// - Parameter view: The view to center to.
    /// - Returns: The modified view.
    @discardableResult
    func center(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }

    /// Centers the view to its superview.
    ///
    /// - Returns: The modified view.
    @discardableResult
    func centerToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        center(superview)
        return self
    }
    
    /// Centers the view horizontally to a given view.
    ///
    /// - Parameter view: The view to center to.
    /// - Returns: The view itself.
    @discardableResult
    func centerHorizontal(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return self
    }

    /// Centers the view horizontally to its superview.
    ///
    /// - Returns: The view itself.
    @discardableResult
    func centerHorizontalToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        centerHorizontal(superview)
        return self
    }
    
    /// Centers the view vertically to the specified view.
    ///
    /// - Parameter view: The view to center to.
    /// - Returns: The current view instance.
    @discardableResult
    func centerVertical(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }
    
    /// Centers the view vertically to its superview.
    ///
    /// - Returns: The current view instance.
    @discardableResult
    func centerVerticalToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        centerVertical(superview)
        return self
    }
}

// MARK: - Pin actions
public extension UIView {
    /// Pins the edges of the current view to the corresponding edges of the specified view with the given padding.
    ///
    /// - Parameters:
    ///   - view: The view to pin to.
    ///   - edge: The edges of the current view to pin. Only one edge can be specified at a time.
    ///   - anchor: The edges of the specified view to pin to. Defaults to `.all`.
    ///   - padding: The amount of padding to apply. Defaults to `0`.
    ///
    /// - Warning: Only one edge can be specified at a time, otherwise the constraints won't be set as expected.
    ///
    /// - Note: Both views must already be in the view hierarchy before calling this method.
    ///
    /// - Returns: The current view instance for chaining.
    ///
    /// /// Example usage:
    /// ```swift
    /// UILabel("Label Text")
    ///     .addView(view)
    ///     .pin(to: view, for: .horizontal)
    ///
    /// ```
    @discardableResult
    func pin(to view: UIView, for edge: Edges.Set, anchor: Edges.Set = .all, padding: CGFloat = 0) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        switch edge {
        case .top:
            pinTop(to: view, anchor: anchor, padding: padding)
        case .bottom:
            pinBottom(to: view, anchor: anchor, padding: padding)
        case .leading:
            pinLeading(to: view, anchor: anchor, padding: padding)
        case .trailing:
            pinTrailing(to: view, anchor: anchor, padding: padding)
        case .horizontal:
            pinLeading(to: view, anchor: .leading, padding: padding)
            pinTrailing(to: view, anchor: .trailing, padding: padding)
        case .vertical:
            pinTop(to: view, anchor: .top, padding: padding)
            pinBottom(to: view, anchor: .bottom, padding: padding)
        default:
            debugPrint("Unexpected case on adding constraints")
        }
        return self
    }
    
    fileprivate func pinTop(to view: UIView, anchor: Edges.Set, padding: CGFloat) {
        switch anchor {
        case .top:
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        default:
            self.topAnchor.constraint(equalTo: view.bottomAnchor, constant: padding).isActive = true
        }
    }
    fileprivate func pinBottom(to view: UIView, anchor: Edges.Set, padding: CGFloat) {
        switch anchor {
        case .bottom:
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        default:
            self.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -padding).isActive = true
        }
    }
    fileprivate func pinLeading(to view: UIView, anchor: Edges.Set, padding: CGFloat) {
        switch anchor {
        case .leading:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        default:
            self.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: padding).isActive = true
        }
    }
    fileprivate func pinTrailing(to view: UIView, anchor: Edges.Set, padding: CGFloat) {
        switch anchor {
        case .trailing:
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        default:
            self.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -padding).isActive = true
        }
    }
    
    /// Pins the edges of the view to its superview's edges.
    ///
    /// - Parameters:
    ///     - anchor: An enum value that determines which edge of the view should be pinned to the superview's edge.
    ///     - edge: An enum value that determines which edge of the superview the view should be pinned to.
    ///     - padding: The distance between the view's edge and the superview's edge. Default value is 0.
    ///
    /// - Returns: The view that was pinned to the superview's edge.
    ///
    /// Use this function to pin a view's edges to its superview's edges. The function adds constraints to the view's layout anchors to ensure it stays attached to its superview's edges even when its superview changes its size.
    ///
    /// To use this function, call it on the view you want to pin, and pass in the appropriate parameters:
    ///
    ///     UILabel("Label Title").pinToSuperview(anchor: .top, for: .top, padding: 20)
    ///
    /// This will pin the top edge of `UILabel` to the top edge of its superview with a padding of 20 points.
    ///
    /// - Note: This function assumes that the view has a superview. If it doesn't, the function will simply return the view itself.
    ///
    /// - Warning: Be careful when using this function with views that are embedded in a hierarchy of nested views. Pinning a view to its superview's edges may not be the desired layout result in such cases. Consider using a more specific pinning function that allows you to pin to a specific view instead of the superview.
    @discardableResult
    func pinToSuperview(anchor: Edges.Set = .all, for edge: Edges.Set, padding: CGFloat = 0) -> Self {
        guard let superview = self.superview else { return self }
        pin(to: superview, for: edge, anchor: anchor, padding: padding)
        return self
    }
}

// MARK: - Fill Constraints
public extension UIView {
    /// This function is used to attach a given view to another view from all edges, effectively filling the space between them. Optional padding can be added within the edges, and the safe area can be ignored if desired.
    ///
    /// - Parameters:
    ///   - view: The superview to fill the edges within.
    ///   - edges: The edges to fill. By default, all edges will be filled.
    ///   - padding: The amount of padding to apply within the edges. By default, no padding is applied.
    ///   - ignoreSafeArea: Whether to ignore the safe area when filling the edges. By default, the safe area is used.
    ///
    /// - Returns: The modified view.
    @discardableResult
    func fill(_ view: UIView, _ edges: Edges.Set = .all,  _ padding: CGFloat = 0, ignoreSafeArea: Bool = false) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let leadingPadding: CGFloat = (edges == .leading || edges == .horizontal || edges == .all) ? padding : .zero
        let tralingPadding: CGFloat = (edges == .trailing || edges == .horizontal || edges == .all) ? -padding : .zero
        let topPadding: CGFloat = (edges == .top || edges == .vertical || edges == .all) ? padding : .zero
        let bottomPadding: CGFloat = (edges == .bottom || edges == .vertical || edges == .all) ? -padding : .zero
        
        if ignoreSafeArea {
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingPadding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: tralingPadding).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: topPadding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottomPadding).isActive = true
        } else {
            self.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leadingPadding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: tralingPadding).isActive = true
            self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topPadding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: bottomPadding).isActive = true
        }

        return self
    }

    /// This function is used to attach a given view's edges to its superview, effectively filling the space between them. Optional padding can be added within the edges, and the safe area can be ignored if desired.
    ///
    /// - Parameters:
    ///   - edges: The edges to fill. By default, all edges will be filled.
    ///   - padding: The amount of padding to apply within the edges. By default, no padding is applied.
    ///   - ignoreSafeArea: Whether to ignore the safe area when filling the edges. By default, the safe area is used.
    ///
    /// - Returns: The modified view.
    @discardableResult
    func fillToSuperView(_ edges: Edges.Set = .all, _ padding: CGFloat = 0, ignoreSafeArea: Bool = false) -> Self {
        guard let superview = self.superview else { return self }
        fill(superview, edges, padding, ignoreSafeArea: ignoreSafeArea)
        return self
    }
}

// MARK: - Appereance
public extension UIView {
    /// This function applies a shadow effect to a view's layer.
    ///
    /// - Parameters:
    ///   - shadowColor: The color of the shadow. The default value is gray with an alpha component of 0.2.
    ///   - radius: The radius of the shadow. The default value is 8.
    ///   - offset: The offset of the shadow. The default value is zero.
    ///
    /// - Returns: The modified view.
    @discardableResult
    func shadow(_ shadowColor: UIColor = .gray.withAlphaComponent(0.2), radius: CGFloat = 8, offset: CGSize = .zero) -> UIView {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
        return self
    }
    
    /// Applies a stroke effect to the view.
    ///
    /// - Parameters:
    ///   - borderWidth: The width of the stroke border. Default value is 1.
    ///   - borderColor: The color of the stroke border. Default value is blue.
    ///
    /// - Returns: The modified view.
    @discardableResult
    func stroke(_ borderWidth: CGFloat = 1, borderColor: UIColor = .blue) -> Self {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        return self
    }
    
    /// Applies a corner radius to the view.
    ///
    /// - Parameter radius: The radius of the view's corners.
    /// - Returns: The modified view.
    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
        return self
    }
    
    /// Sets the content mode of the view.
    ///
    /// - Parameter contentMode: The content mode to set.
    /// - Returns: The modified view.
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }

    /// Sets the tint color of the view.
    ///
    /// - Parameter tintColor: The tint color to set.
    /// - Returns: The modified view.
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }

    /// Sets the background color of the view.
    ///
    /// - Parameter color: The background color to set.
    /// - Returns: The modified view.
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }

    /// Sets the clips to bounds property of the view.
    ///
    /// - Parameter clipsToBounds: The boolean value to set the clips to bounds property to.
    /// - Returns: The modified view.
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }

    /// Sets the transform property of the view.
    ///
    /// - Parameter transform: The transform to set.
    /// - Returns: The modified view.
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }
}
