//
//  File.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

public final class VerticalStack: UIStackView {
    public convenience init(@ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        self.axis(.vertical)
        content().forEach { addArrangedView($0) }
    }
}
