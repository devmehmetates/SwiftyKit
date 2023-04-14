//
//  UIButton.swift
//  
//
//  Created by Mehmet Ateş on 11.04.2023.
//

import UIKit

public extension UIButton {
    @discardableResult
    func setTitle(_ title: String, _ state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }

    @discardableResult
    func setTitleColor(_ color: UIColor, _ state: UIControl.State = .normal) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }
}
