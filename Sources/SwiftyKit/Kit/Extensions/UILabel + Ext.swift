//
//  UILabel.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import UIKit

/// This extension provides convenience methods for creating and customizing a `UILabel`.
public extension UILabel {
    
    /// Initializes a new instance of `UILabel` with the given text.
    ///
    /// - Parameter text: The text to be displayed by the label.
    convenience init(_ text: String?) {
        self.init()
        self.text = text
    }
    
    /// Sets the text of the label and returns the updated label.
    ///
    /// - Parameter text: The text to be displayed by the label.
    /// - Returns: The updated label with the new text.
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// Sets the attributed text of the label.
    ///
    /// - Parameter attributedText: The attributed string to be displayed in the label.
    /// - Returns: The modified instance of the label.
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// Sets the text color of the label and returns the updated label.
    ///
    /// - Parameter textColor: The color of the text to be displayed by the label.
    /// - Returns: The updated label with the new text color.
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }
    
    /// Sets the alignment of the label's text.
    ///
    /// - Parameter textAlignment: The alignment to be set.
    /// - Returns: The modified `UILabel`.
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    /// Sets the font of the label and returns the updated label.
    ///
    /// - Parameter font: The font to be used for displaying the label text.
    /// - Returns: The updated label with the new font.
    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// Sets the number of lines for the label and returns the updated label.
    ///
    /// - Parameter numberOfLines: The maximum number of lines that the label can display.
    /// - Returns: The updated label with the new number of lines.
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    /// Sets the line break mode of the label's text.
    ///
    /// - Parameter lineBreakMode: The line break mode to be set.
    /// - Returns: The modified `UILabel`.
    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.lineBreakMode = lineBreakMode
        return self
    }
    
    /// Sets the color to use for the label's text when it is highlighted.
    ///
    /// - Parameter highlightedTextColor: The color to use for the highlighted text.
    /// - Returns: The modified label instance.
    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor) -> Self {
        self.highlightedTextColor = highlightedTextColor
        return self
    }

    
    /// Sets a Boolean value indicating whether the font size should be reduced to fit the label’s text within its bounds.
    ///
    /// - Parameter adjustsFontSizeToFitWidth: A Boolean value indicating whether the font size should be reduced.
    /// - Returns: The label itself, allowing for further chaining.
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    /// Sets the minimum scale factor that should be applied when adjusting the font size to fit the label’s text.
    ///
    /// - Parameter minimumScaleFactor: The minimum scale factor allowed for the label’s text.
    /// - Returns: The label itself, allowing for further chaining.
    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }
}
