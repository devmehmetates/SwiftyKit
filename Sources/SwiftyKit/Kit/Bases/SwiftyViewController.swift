//
//  SwiftyViewController.swift
//
//
//  Created by Mehmet Ateş on 17.11.2023.
//

import UIKit

public protocol SwiftyViewInferface {
    var content: UIView { get }
    func reDraw()
    func cleanDrawed()
    func draw()
}

public extension SwiftyViewInferface where Self: UIViewController {
    func reDraw() {
        cleanDrawed()
        draw()
    }
    
    func cleanDrawed() {
        content.removeFromSuperview()
        view.subviews.forEach { $0.removeFromSuperview() }
    }

    func draw() {
        content
            .embedTo(view)
            .fillToSuperView()
    }
}

open class SwiftyViewController: UIViewController, SwiftyViewInferface {
    public var content: UIView { view }

    open override func viewDidLoad() {
        super.viewDidLoad()
        draw()
    }
}
