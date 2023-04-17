//
//  BaseStackView.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

/// A custom UIStackView subclass that stacks its arranged subviews horizontally.
/// Example usage:
/// ```swift
/// HorizontalStack {
///     UILabel("First Label")
///     UILabel("Second Label")
///     UILabel("Third Label")
/// }
/// ```
public final class HorizontalStack: UIStackView {
    
    /// Initializes a new instance of `HorizontalStack` with the given subviews.
    ///
    /// - Parameter content: A closure that returns an array of `UIView` objects to be arranged horizontally.
    public convenience init(@ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        self.axis(.horizontal)
        self.alignment(.center)
        self.spacing(10)
        content().lazy.forEach { addArrangedView($0) }
    }
}
