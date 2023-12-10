//
//  BaseButton.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

/// A custom `UIButton` subclass with the ability to set a closure that will be called when the button is clicked.
///
/// Example usage:
///
/// ```swift
/// BaseButton(type: .system)
///     .didClick {
///         print("Button clicked!")
///     }
///     .setTitle("Button Title")
///     .padding(.horizontal)
/// ```
open class BaseButton: UIButton {
    
    /// The closure that will be called when the button is clicked.
    private var didClick: (() -> Void)?
    
    /// Sets the closure to be called when the button is clicked and returns itself, allowing for chaining.
    ///
    /// - Parameter completion: The closure to be called when the button is clicked.
    /// - Returns: The `BaseButton` instance itself.
    @discardableResult
    public func didClick(_ completion: @escaping () -> Void) -> Self {
        self.didClick = completion
        self.addTarget(self, action: #selector(onTap), for: .primaryActionTriggered)
        return self
    }
    
    /// The function called when the button is clicked.
    @objc private func onTap() {
        didClick?()
    }
}
