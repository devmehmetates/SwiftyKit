//
//  File.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

/// A custom UIStackView subclass that stacks its arranged subviews vertically.
///
/// Example usage:
/// ```swift
/// VerticalStack {
///     UILabel("First Label")
///     UILabel("Second Label")
///     UILabel("Third Label")
/// }
/// ```
public final class VerticalStack: UIStackView {
    
    /// Initializes a new instance of `VerticalStack` with the given subviews.
    ///
    /// - Parameter content: A closure that returns an array of `UIView` objects to be arranged vertically.
    public convenience init(@ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        self.axis(.vertical)
        self.alignment(.center)
        self.spacing(10)
        content().lazy.forEach { addArrangedView($0) }
    }
}
