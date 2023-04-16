//
//  UISwitch + Ext.swift
//  
//
//  Created by Mehmet Ateş on 16.04.2023.
//

import UIKit

/// A set of convenience methods for configuring a UISwitch instance.
public extension UISwitch {
    
    /// Sets the onTintColor for the switch.
    ///
    /// - Parameter color: The color to set for the switch.
    /// - Returns: The modified `UISwitch` instance.
    @discardableResult
    func onTintColor(_ color: UIColor) -> Self {
        self.onTintColor = color
        return self
    }
    
    /// Sets the thumbTintColor for the switch.
    ///
    /// - Parameter color: The color to set for the thumb.
    /// - Returns: The modified `UISwitch` instance.
    @discardableResult
    func thumbTintColor(_ color: UIColor) -> Self {
        self.thumbTintColor = color
        return self
    }
    
    /// Sets the value for the switch without triggering the valueChanged action.
    ///
    /// - Parameter value: The value to set for the switch.
    /// - Returns: The modified `UISwitch` instance.
    @discardableResult
    func setValue(_ value: Bool) -> Self {
        self.setOn(value, animated: false)
        return self
    }
}
