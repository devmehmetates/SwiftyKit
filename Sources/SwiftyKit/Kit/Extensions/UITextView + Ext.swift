//
//  UITextView + Ext.swift
//  
//
//  Created by Mehmet Ateş on 22.04.2023.
//

import UIKit

/// A set of convenience functions for configuring a `UITextView`.
public extension UITextView {
    
    /// Sets the text displayed by the text view.
    ///
    /// - Parameter text: The string displayed by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// Sets the attributed text displayed by the text view.
    ///
    /// - Parameter text: The attributed string displayed by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func attributedText(_ text: NSAttributedString?) -> Self {
        self.attributedText = text
        return self
    }
    
    /// Sets the font of the text displayed by the text view.
    ///
    /// - Parameter font: The font of the text displayed by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    /// Sets the text color of the text displayed by the text view.
    ///
    /// - Parameter color: The text color of the text displayed by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }
    
    /// Sets the text alignment of the text displayed by the text view.
    ///
    /// - Parameter alignment: The text alignment of the text displayed by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    /// Sets the keyboard type used by the text view.
    ///
    /// - Parameter type: The keyboard type used by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func keyboardType(_ type: UIKeyboardType) -> Self {
        self.keyboardType = type
        return self
    }
    
    /// Sets the return key type used by the text view.
    ///
    /// - Parameter type: The return key type used by the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func returnKeyType(_ type: UIReturnKeyType) -> Self {
        self.returnKeyType = type
        return self
    }
    
    /// Sets whether or not the text view is editable.
    ///
    /// - Parameter isEditable: Whether or not the text view is editable.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func isEditable(_ isEditable: Bool) -> Self {
        self.isEditable = isEditable
        return self
    }

    /// Sets whether or not the text view is selectable.
    ///
    /// - Parameter isSelectable: Whether or not the text view is selectable.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func isSelectable(_ isSelectable: Bool) -> Self {
        self.isSelectable = isSelectable
        return self
    }

    /// Sets whether or not the text view allows scrolling.
    ///
    /// - Parameter isScrollEnabled: Whether or not the text view allows scrolling.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        self.isScrollEnabled = isScrollEnabled
        return self
    }

    /// Sets the data detector types for the text view.
    ///
    /// - Parameter types: The data detector types for the text view.
    /// - Returns: The modified `UITextView` instance.
    @discardableResult
    func dataDetectorTypes(_ types: UIDataDetectorTypes) -> Self {
        self.dataDetectorTypes = types
        return self
    }
}
