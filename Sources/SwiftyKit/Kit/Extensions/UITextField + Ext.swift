//
//  UITextField.swift
//  
//
//  Created by Mehmet Ateş on 11.04.2023.
//

import UIKit

/// A set of convenience functions for configuring a `UITextField`.
public extension UITextField {
    
    /// Sets the text displayed by the text field.
    ///
    /// - Parameter text: The string displayed by the text field.
    /// - Returns: The modified `UITextField` instance.
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// Sets the styled text displayed by the text field.
    ///
    /// - Parameter attributedText: The styled text displayed by the text field.
    /// - Returns: The modified `UITextField` instance.
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// Sets the placeholder text for the text field.
    ///
    /// - Parameter placeholder: The placeholder text to display in the text field.
    /// - Returns: The updated text field instance.
    @discardableResult
    func placeholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    /// Sets the attributed placeholder string that is displayed when there is no other text in the text field.
    ///
    /// - Parameter attributedPlaceholder: The attributed string to use as the placeholder text.
    /// - Returns: The current text field instance.
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        self.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    /// Sets the text color of the text field.
    ///
    /// - Parameter textColor: The color to use for the text in the text field.
    /// - Returns: The updated text field instance.
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }
    
    /// Configures the text alignment of the text field.
    ///
    /// - Parameter textAlignment: The text alignment to be set on the text field.
    /// - Returns: Returns the modified instance of the text field.
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    /// Sets the font for the text in the text field.
    ///
    /// - Parameter font: The font to use for the text in the text field.
    /// - Returns: The updated text field instance.
    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// Sets the `borderStyle` property of the text field.
    ///
    /// - Parameter borderStyle: The border style to set.
    /// - Returns: The modified text field instance.
    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    /// Sets the `adjustsFontSizeToFitWidth` property of the text field.
    ///
    /// - Parameter adjustsFontSizeToFitWidth: A Boolean value indicating whether the font size should be reduced to fit the text field's content.
    /// - Returns: The modified text field instance.
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    /// Sets the `minimumFontSize` property of the text field.
    ///
    /// - Parameter minimumFontSize: The minimum font size to use when adjusting the font size to fit the text field's content.
    /// - Returns: The modified text field instance.
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        self.minimumFontSize = minimumFontSize
        return self
    }
    
    /// Sets the `background` property of the text field.
    ///
    /// - Parameter background: The background image to set.
    /// - Returns: The modified text field instance.
    @discardableResult
    func background(_ background: UIImage?) -> Self {
        self.background = background
        return self
    }
    
    /// Sets the `disabledBackground` property of the text field.
    ///
    /// - Parameter disabledBackground: The disabled background image to set.
    /// - Returns: The modified text field instance.
    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> Self {
        self.disabledBackground = disabledBackground
        return self
    }
    
    /// Sets the `leftView` property of the text field.
    ///
    /// - Parameter leftView: The view to set as the left view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func leftView(_ leftView: UIView?) -> Self {
        self.leftView = leftView
        return self
    }
    
    /// Sets the `leftViewMode` property of the text field.
    ///
    /// - Parameter leftViewMode: The mode to use for displaying the left view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Self {
        self.leftViewMode = leftViewMode
        return self
    }
    
    /// Sets the `rightView` property of the text field.
    ///
    /// - Parameter rightView: The view to set as the right view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func rightView(_ rightView: UIView?) -> Self {
        self.rightView = rightView
        return self
    }
    
    /// Sets the `rightViewMode` property of the text field.
    ///
    /// - Parameter rightViewMode: The view mode to set for the right view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
        self.rightViewMode = rightViewMode
        return self
    }

    /// Sets the `inputView` property of the text field.
    ///
    /// - Parameter inputView: The view to set as the input view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func inputView(_ inputView: UIView?) -> Self {
        self.inputView = inputView
        return self
    }
    
    /// Sets the `inputAccessoryView` property of the text field.
    ///
    /// - Parameter inputAccessoryView: The view to set as the input accessory view of the text field.
    /// - Returns: The modified text field instance.
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.inputAccessoryView = inputAccessoryView
        return self
    }

    /// Sets the `clearsOnInsertion` property of the text field.
    ///
    /// - Parameter clearsOnInsertion: A Boolean value indicating whether the text field should clear its text when the user begins editing.
    /// - Returns: The modified text field instance.
    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        self.clearsOnInsertion = clearsOnInsertion
        return self
    }

    /// Sets the `clearsOnBeginEditing` property of the text field.
    ///
    /// - Parameter clearsOnBeginEditing: A Boolean value indicating whether the text field should clear its text when the user begins editing.
    /// - Returns: The modified text field instance.
    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
        self.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
}
