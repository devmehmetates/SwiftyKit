//
//  ViewBuilderProtocol.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import UIKit

// MARK: - Base
public extension UIView {
    @discardableResult
    func addView(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
}

// MARK: - Padding
public extension UIView {
    @discardableResult
    func padding(_ edges: Edges.Set = .all, padding: CGFloat = 16) -> UIView {
        let view = UIView()
        view.addSubview(self)
        self.fillToSuperView(edges, padding)
        return view
    }
}

// MARK: - Frame & Size
public extension UIView {
    @discardableResult
    func widthToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalTo: superview.widthAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func width(_ width: CGFloat) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func heightToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalTo: superview.heightAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func height(_ height: CGFloat) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        if let width {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        return self
    }
}

// MARK: - Center
public extension UIView {
    @discardableResult
    func center(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerHorizontal(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerHorizontalToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerVertical(_ view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func centerVerticalToSuperview() -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        return self
    }
}

// MARK: - Pin actions
public extension UIView {
    @discardableResult
    func pin(to view: UIView, anchor: Edges.Set = .all, for edge: Edges.Set, padding: CGFloat = 0) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        switch edge {
        case .top:
            switch anchor {
            case .top:
                self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            case .bottom:
                self.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .bottom:
            switch anchor {
            case .top:
                self.bottomAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            case .bottom:
                self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .leading:
            switch anchor {
            case .leading:
                self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            case .trailing:
                self.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .trailing:
            switch anchor {
            case .leading:
                self.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            case .trailing:
                self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .horizontal:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        case .vertical:
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        case .all:
            print("Unexpected case on adding constraints")
        default:
            print("Unexpected case on adding constraints")
        }
        return self
    }
    
    @discardableResult
    func pinToSuperview(anchor: Edges.Set = .all, for edge: Edges.Set, padding: CGFloat = 0) -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        switch edge {
        case .top:
            switch anchor {
            case .top:
                self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            case .bottom:
                self.topAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .bottom:
            switch anchor {
            case .top:
                self.bottomAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            case .bottom:
                self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .leading:
            switch anchor {
            case .leading:
                self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            case .trailing:
                self.leadingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .trailing:
            switch anchor {
            case .leading:
                self.trailingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            case .trailing:
                self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
            default:
                print("Unexpected case on adding constraints")
            }
        case .horizontal:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
        case .vertical:
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
        case .all:
            print("Unexpected case on adding constraints")
        default:
            print("Unexpected case on adding constraints")
        }
        return self
    }
}

// MARK: - Fill Constraints
public extension UIView {
    @discardableResult
    func fill(_ view: UIView, _ edges: Edges.Set = .all,  _ padding: CGFloat = 0) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        switch edges {
        case .top:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .bottom:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        case .leading:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .trailing:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .horizontal:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .vertical:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        case .all:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        default:
            print("Unexpected case on adding constraints")
        }
        return self
    }
    
    @discardableResult
    func fillToSuperView(_ edges: Edges.Set = .all,  _ padding: CGFloat = 0) -> Self {
        guard let superview = self.superview else { return self }
        self.translatesAutoresizingMaskIntoConstraints = false
        switch edges {
        case .top:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        case .bottom:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
        case .leading:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        case .trailing:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        case .horizontal:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        case .vertical:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
        case .all:
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding).isActive = true
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding).isActive = true
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding).isActive = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding).isActive = true
        default:
            print("Unexpected case on adding constraints")
        }
        return self
    }
}

// MARK: - Appereance
public extension UIView {
    @discardableResult
    func shadow(_ shadowColor: UIColor = .gray.withAlphaComponent(0.2), radius: CGFloat = 8, offset: CGSize = .zero) -> UIView {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
        return self
    }
    
    @discardableResult
    func stroke(_ borderWidth: CGFloat = 1, borderColor: UIColor = .blue) -> Self {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }
}
