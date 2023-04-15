//
//  UIButton.swift
//  
//
//  Created by Mehmet Ateş on 11.04.2023.
//

import UIKit

/// A set of convenience methods for configuring a UIButton instance.
public extension UIButton {
    
    /// Sets the title for the specified state.
    ///
    /// - Parameters:
    ///   - title: The title to set for the button.
    ///   - state: The state that uses the specified title. The default value is `normal`.
    /// - Returns: The modified `UIButton` instance.
    @discardableResult
    func setTitle(_ title: String, _ state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }

    /// Sets the color of the title for the specified state.
    ///
    /// - Parameters:
    ///   - color: The color to set for the button title.
    ///   - state: The state that uses the specified title color. The default value is `normal`.
    /// - Returns: The modified `UIButton` instance.
    @discardableResult
    func setTitleColor(_ color: UIColor, _ state: UIControl.State = .normal) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }
    
    /// Sets the attributed title for the button.
    ///
    /// - Parameters:
    ///   - title: The attributed title to use for the button.
    ///   - state: The state that uses the specified title.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setAttributedTitle(_ title: NSAttributedString, _ state: UIControl.State = .normal) -> Self {
        self.setAttributedTitle(title, for: state)
        return self
    }
    
    /// Sets the image for the button.
    ///
    /// - Parameters:
    ///   - image: The image to use for the button.
    ///   - state: The state that uses the specified image.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setImage(_ image: UIImage?, _ state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    /// Sets the background image for the button.
    ///
    /// - Parameters:
    ///   - image: The background image to use for the button.
    ///   - state: The state that uses the specified background image.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, _ state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(image, for: state)
        return self
    }
    
    /// Sets the title label's font for the button.
    ///
    /// - Parameter font: The font to use for the title label.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setTitleFont(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }
    
    /// Sets the title label's text alignment for the button.
    ///
    /// - Parameter alignment: The text alignment to use for the title label.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setTitleAlignment(_ alignment: NSTextAlignment) -> Self {
        self.titleLabel?.textAlignment = alignment
        return self
    }
    
    /// Sets the title label's number of lines for the button.
    ///
    /// - Parameter lines: The number of lines to use for the title label.
    /// - Returns: Self instance to allow chaining.
    @discardableResult
    func setTitleNumberOfLines(_ lines: Int) -> Self {
        self.titleLabel?.numberOfLines = lines
        return self
    }
}
