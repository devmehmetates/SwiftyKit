//
//  ViewBuilderProtocol.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import UIKit

public protocol ViewBuilderProtocol: AnyObject {
    var content: UIView { get }
}

// MARK: - Base
public extension ViewBuilderProtocol {
    @discardableResult
    func addView(_ view: UIView) -> Self {
        view.addSubview(self.content)
        return self
    }
}

// MARK: - Frame & Size
public extension ViewBuilderProtocol {
    @discardableResult
    func width(_ width: CGFloat) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        content.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func height(_ height: CGFloat) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        content.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        if let width {
            content.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height {
            content.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        return self
    }
}

// MARK: - Center
public extension ViewBuilderProtocol {
    @discardableResult
    func center(_ view: UIView) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.content.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerToSuperview() -> Self {
        guard let superview = content.superview else { return self }
        content.translatesAutoresizingMaskIntoConstraints = false
        content.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        content.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerHorizontal(_ view: UIView) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerVertical(_ view: UIView) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }
}

// MARK: - Y Axis Constraints
public extension ViewBuilderProtocol {
    @discardableResult
    func pinLeading(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinLeading(_ anchor: NSLayoutXAxisAnchor, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.leadingAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinTrailing(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinTrailing(_ anchor: NSLayoutXAxisAnchor, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.trailingAnchor.constraint(equalTo: anchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinHorizontal(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        self.content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        return self
    }
}

// MARK: - X Axis Constraints
public extension ViewBuilderProtocol {
    @discardableResult
    func pinTop(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinTop(_ anchor: NSLayoutYAxisAnchor, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.topAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinBottom(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinBottom(_ anchor: NSLayoutYAxisAnchor, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.bottomAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    func pinVertical(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        self.content.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        return self
    }
}

// MARK: - Fill Constraints
public extension ViewBuilderProtocol {
    @discardableResult
    func fill(_ view: UIView, padding: CGFloat = 0) -> Self {
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        self.content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        self.content.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        self.content.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    func fillToSuperView(_ padding: CGFloat = 0) -> Self {
        guard let superview = content.superview else { return self }
        self.content.translatesAutoresizingMaskIntoConstraints = false
        self.content.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
        self.content.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
        self.content.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
        self.content.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
        return self
    }
}

// MARK: - Appereance
public extension ViewBuilderProtocol {
    @discardableResult
    func stroke(_ borderWidth: CGFloat = 1, borderColor: UIColor = .blue) -> Self {
        self.content.layer.borderWidth = borderWidth
        self.content.layer.borderColor = borderColor.cgColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        self.content.layer.cornerRadius = radius
        self.content.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.content.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.content.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        self.content.backgroundColor = color
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.content.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> Self {
        self.content.transform = transform
        return self
    }
}
