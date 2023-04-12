//
//  File.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

final class VerticalStack: UIStackView {
    convenience init(@ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        self.axis(.vertical)
        content().forEach { addArrangedView($0) }
    }
}
