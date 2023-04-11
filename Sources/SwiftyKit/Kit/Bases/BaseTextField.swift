//
//  BaseTextField.swift
//  
//
//  Created by Mehmet Ateş on 10.04.2023.
//

import UIKit

final class BaseTextField: UITextField, UITextFieldDelegate {
    private var onEdit: ((_ value: String) -> Void)?
    private var onEditBegin: ((_ value: String) -> Void)?
    private var onEditEnd: ((_ value: String) -> Void)?
    
    @discardableResult
    func onEdit(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEdit = completion
        return self
    }
    
    @discardableResult
    func onEditBegin(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEditBegin = completion
        return self
    }
    
    @discardableResult
    func onEditEnd(_ completion: @escaping (_ text: String) -> Void) -> Self {
        self.delegate = self
        self.onEditEnd = completion
        return self
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        onEdit?(textField.text ?? "")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        onEditEnd?(textField.text ?? "")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        onEditBegin?(textField.text ?? "")
    }
}
