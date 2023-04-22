//
//  UISlider + Ext.swift
//  
//
//  Created by Mehmet Ateş on 22.04.2023.
//

import UIKit

/// This extension provides convenience methods for creating and customizing a `UISlider`.
public extension UISlider {
    
    /// Sets the minimum value for the slider.
    ///
    /// - Parameter value: The minimum value for the slider.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func minimumValue(_ value: Float) -> Self {
        minimumValue = value
        return self
    }
    
    /// Sets the maximum value for the slider.
    ///
    /// - Parameter value: The maximum value for the slider.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func maximumValue(_ value: Float) -> Self {
        maximumValue = value
        return self
    }
    
    /// Sets the current value of the slider.
    ///
    /// - Parameter value: The current value of the slider.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func value(_ value: Float) -> Self {
        self.value = value
        return self
    }
    
    /// Sets whether or not the slider is continuous.
    ///
    /// - Parameter isContinuous: Whether or not the slider is continuous.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func isContinuous(_ isContinuous: Bool) -> Self {
        self.isContinuous = isContinuous
        return self
    }
    
    /// Sets the minimum track image for the slider.
    ///
    /// - Parameter image: The minimum track image for the slider.
    /// - Parameter state: The state for which to set the image.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func minimumTrackImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        setMinimumTrackImage(image, for: state)
        return self
    }
    
    /// Sets the maximum track image for the slider.
    ///
    /// - Parameter image: The maximum track image for the slider.
    /// - Parameter state: The state for which to set the image.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func maximumTrackImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        setMaximumTrackImage(image, for: state)
        return self
    }
    
    /// Sets the thumb image for the slider.
    ///
    /// - Parameter image: The thumb image for the slider.
    /// - Parameter state: The state for which to set the image.
    /// - Returns: The modified `UISlider` instance.
    @discardableResult
    func thumbImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        setThumbImage(image, for: state)
        return self
    }
}
