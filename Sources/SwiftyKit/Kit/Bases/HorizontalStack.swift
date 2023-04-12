//
//  BaseStackView.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

final class HorizontalStack: UIStackView {
    convenience init(@ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        self.axis(.horizontal)
        content().forEach { addArrangedView($0) }
    }
}
