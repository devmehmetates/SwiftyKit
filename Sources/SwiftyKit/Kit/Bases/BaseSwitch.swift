//
//  BaseSwitch.swift
//  
//
//  Created by Mehmet Ateş on 16.04.2023.
//

import UIKit

/// A custom `UISwitch` subclass with a completion closure for value changes.
///
/// Example usage:
/// ```swift
/// BaseSwitch()
///     .didValueChanged { value in
///         print("Switch value changed to \(value)")
///     }
/// ```
public final class BaseSwitch: UISwitch {
    
    private var didValueChanged: ((_ value: Bool) -> Void)?

    /// Sets a completion closure to be called when the switch value changes.
    ///
    /// - Parameter completion: A closure to be called when the switch value changes.
    /// - Returns: The same instance of `BaseSwitch` for chaining purposes.
    @discardableResult
    public func didValueChanged(_ completion: @escaping (_ value: Bool) -> Void) -> Self {
        self.didValueChanged = completion
        self.addTarget(self, action: #selector(valueChanged), for: .valueChanged)
        return self
    }
    
    /// The function called when the value of the switch changes.
    ///
    /// - Parameter uiswitch: The UISwitch whose value has changed.
    @objc private func valueChanged(_ uiswitch: UISwitch) {
        didValueChanged?(uiswitch.isOn)
    }
}
