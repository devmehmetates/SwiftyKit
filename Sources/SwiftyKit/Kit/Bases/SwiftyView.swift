//
//  SwiftyView.swift
//  
//
//  Created by Mehmet Ateş on 10.12.2023.
//

import UIKit

public extension SwiftyViewInferface where Self: UIView {
    func reDraw() {
        cleanDrawed()
        draw()
    }
    
    func cleanDrawed() {
        content.removeFromSuperview()
        self.subviews.forEach { $0.removeFromSuperview() }
    }

    func draw() {
        content
            .embedTo(self)
            .fillToSuperView()
    }
}

open class SwiftyView: UIView, SwiftyViewInferface {
    open var content: UIView { self }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        draw()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
