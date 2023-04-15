//
//  UILabel.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import UIKit

public extension UILabel {
    convenience init(_ text: String?) {
        self.init()
        self.text = text
    }
    
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
}
