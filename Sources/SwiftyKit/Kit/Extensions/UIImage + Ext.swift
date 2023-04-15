//
//  File.swift
//  
//
//  Created by Mehmet Ateş on 15.04.2023.
//

import UIKit

/// An extension of `UIImageView` that provides chainable functions for setting its image.
public extension UIImageView {
    
    /// Sets the image of the image view.
    ///
    /// - Parameter image: The image to set as the image view's image.
    /// - Returns: The image view instance with the image set.
    @discardableResult
    func image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
    
    /// Sets the image of the image view to the system image with the given name.
    ///
    /// - Parameter systemName: The name of the system image to set as the image.
    /// - Returns: The image view instance with the system image set.
    @available(iOS 13.0, *)
    @discardableResult
    func imageSystemName(_ systemName: String) -> Self {
        self.image = UIImage(systemName: systemName)
        return self
    }
    
    /// Sets the image of the image view to the image with the given name.
    ///
    /// - Parameter named: The name of the image to set as the image.
    /// - Returns: The image view instance with the named image set.
    @discardableResult
    func imageNamed(_ named: String) -> Self {
        self.image = UIImage(named: named)
        return self
    }
    
    /// Sets the image of the image view to the image at the given URL, asynchronously.
    ///
    /// - Parameter url: The URL of the image to set as the image.
    /// - Returns: The image view instance with the image set asynchronously.
    @discardableResult
    func asyncImage(_ url: URL?) -> Self {
        guard let url else { return self }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if error != nil { debugPrint("Image load failed") }
            guard let data, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
        
        return self
    }
    
    /// Sets the tint color of the image view's image.
    ///
    /// - Parameter color: The color to set as the tint color.
    /// - Returns: The image view instance with the tint color set.
    @available(iOS 13.0, *)
    @discardableResult
    func imageTintColor(_ color: UIColor) -> Self {
        guard let image else { return self }
        self.image = image.withTintColor(color)
        return self
    }
    
    /// Sets the rendering mode of the image view's image.
    ///
    /// - Parameter mode: The rendering mode to set for the image.
    /// - Returns: The image view instance with the rendering mode set.
    @discardableResult
    func imageRenderingMode(_ mode: UIImage.RenderingMode) -> Self {
        guard let image else { return self }
        self.image = image.withRenderingMode(mode)
        return self
    }
}
