//
//  BaseScrollView.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

public final class BaseScrollView: UIScrollView {
    private let contentView = VerticalStack()
    
    public convenience init(_ insets: Edges.Set = .all, _ insetPadding: CGFloat = 0, @ContentBuilder _ content: () -> [UIView]) {
        self.init(frame: .zero)
        content().forEach { contentView.addArrangedView($0) }
        contentView
            .addView(self)
            .fillToSuperView(insets, insetPadding, ignoreSafeArea: true)
            .widthToSuperview()
    }
}
