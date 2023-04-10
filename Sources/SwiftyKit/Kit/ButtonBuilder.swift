//
//  ButtonBuilder.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

public final class ButtonBuilder: UIButton, ViewBuilderProtocol {
    public var content: UIView { self }
    private var didClick: (() -> Void)?
    
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
    
    @discardableResult
    func didClick(_ completion: @escaping () -> Void) -> Self {
        self.didClick = completion
        self.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        return self
    }
    
    @objc
    private func onTap() {
        didClick?()
    }
}
