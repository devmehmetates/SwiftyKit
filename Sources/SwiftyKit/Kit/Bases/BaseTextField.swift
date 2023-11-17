//
//  BaseTextField.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

/// A custom `UITextField` subclass that simplifies adding closures to respond to text field editing events.
///
/// Example usage:
///
/// ```swift
/// BaseTextField()
///     .onEdit { text in
///         print("Text is being edited: \(text)")
///     }
///     .onEditBegin { text in
///         print("Text editing began: \(text)")
///     }
///     .onEditEnd { text in
///         print("Text editing ended: \(text)")
///     }
/// ```
open class BaseTextField: UITextField {
    
    /// The closure that will be called when the text field's text changes.
    private var onEdit: ((_ value: String) -> Void)?
    
    /// The closure that will be called when the text field's editing begins.
    private var onEditBegin: ((_ value: String) -> Void)?
    
    /// The closure that will be called when the text field's editing ends.
    private var onEditEnd: ((_ value: String) -> Void)?
    
    /// Adds a closure to be called when the text field's text changes.
    ///
    /// - Parameter completion: The closure to be called when the text changes.
    /// - Returns: Self, enabling the chaining of method calls.
    @discardableResult
    public func onEdit(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEdit = completion
        return self
    }
    
    /// Adds a closure to be called when the text field's editing begins.
    ///
    /// - Parameter completion: The closure to be called when editing begins.
    /// - Returns: Self, enabling the chaining of method calls.
    @discardableResult
    public func onEditBegin(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEditBegin = completion
        return self
    }
    
    /// Adds a closure to be called when the text field's editing ends.
    ///
    /// - Parameter completion: The closure to be called when editing ends.
    /// - Returns: Self, enabling the chaining of method calls.
    @discardableResult
    public func onEditEnd(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEditEnd = completion
        return self
    }
}

// MARK: - UITextFieldDelegate
extension BaseTextField: UITextFieldDelegate {
    /// Called when the text field's text changes. Calls the `onEdit` closure if it is set.
    public func textFieldDidChangeSelection(_ textField: UITextField) {
        onEdit?(textField.text ?? "")
    }
    
    /// Called when the text field's editing ends. Calls the `onEditEnd` closure if it is set.
    public func textFieldDidEndEditing(_ textField: UITextField) {
        onEditEnd?(textField.text ?? "")
    }
    
    /// Called when the text field's editing begins. Calls the `onEditBegin` closure if it is set.
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        onEditBegin?(textField.text ?? "")
    }
}
