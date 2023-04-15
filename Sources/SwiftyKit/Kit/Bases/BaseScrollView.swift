//
//  BaseScrollView.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit
/// A custom `UIScrollView` subclass that simplifies the process of adding a stack of views as subviews.
/// 
/// Example usage:
///
/// ```swift
/// BaseScrollView {
///     UILabel("First Label")
///     UILabel("Second Label")
///     UILabel("Third Label")
/// }
/// ```
///
/// Recommended  usage:
///
/// ```swift
/// BaseScrollView {
///     VerticalStack {
///         UILabel("First Label")
///         UILabel("Second Label")
///         UILabel("Third Label")
///     }
/// }
/// ```
public final class BaseScrollView: UIScrollView {
    
    /// The stack view that will hold the content.
    private let contentView = VerticalStack()
    
    /// Initializes the scroll view with a vertical stack of views as subviews.
    ///
    /// - Parameters:
    ///   - insets: The edge insets of the content view from the scroll view's bounds.
    ///   - insetPadding: The padding between the content view and the scroll view's bounds.
    ///   - content: A closure that returns an array of views to be added as subviews of the scroll view.
    ///
    public convenience init(_ insets: Edges.Set = .all, _ insetPadding: CGFloat = 0, @ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        content().forEach { contentView.addArrangedView($0) }
        contentView
            .addView(self)
            .fillToSuperView(insets, insetPadding, ignoreSafeArea: true)
            .widthToSuperview()
    }
}
