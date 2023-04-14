//
//  BaseButton.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

public final class BaseButton: UIButton {
    private var didClick: (() -> Void)?
    
    @discardableResult
    public func didClick(_ completion: @escaping () -> Void) -> Self {
        self.didClick = completion
        self.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        return self
    }
    
    @objc
    private func onTap() {
        didClick?()
    }
}
