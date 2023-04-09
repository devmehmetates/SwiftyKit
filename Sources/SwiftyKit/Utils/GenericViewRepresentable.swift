//
//  GenericViewRepresentable.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI

#if DEBUG
@available(iOS 13.0, *)
private struct GenericUIViewRepresentable<ViewType>: UIViewRepresentable where ViewType: UIView {
    func updateUIView(_ uiView: ViewType, context: Context) { }
    let factory: (Context) -> ViewType
    func makeUIView(context: Context) -> ViewType { factory(context) }
}

@available(iOS 13.0, *)
private struct GenericUIViewControllerRepresentable<ViewControllerType>: UIViewControllerRepresentable where ViewControllerType: UIViewController {
    func updateUIViewController(_ uiViewController: ViewControllerType, context: Context) { }
    let factory: (Context) -> ViewControllerType
    func makeUIViewController(context: Context) -> ViewControllerType { factory(context) }
}
#endif
