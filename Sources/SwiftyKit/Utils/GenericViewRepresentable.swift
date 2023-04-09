//
//  GenericViewRepresentable.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI

#if DEBUG
@available(iOS 13.0, *)
public struct GenericUIViewRepresentable<ViewType>: UIViewRepresentable where ViewType: UIView {
    public func updateUIView(_ uiView: ViewType, context: Context) { }
    let factory: (Context) -> ViewType
    public func makeUIView(context: Context) -> ViewType { factory(context) }
}

@available(iOS 13.0, *)
public struct GenericUIViewControllerRepresentable<ViewControllerType>: UIViewControllerRepresentable where ViewControllerType: UIViewController {
    public func updateUIViewController(_ uiViewController: ViewControllerType, context: Context) { }
    let factory: (Context) -> ViewControllerType
    public func makeUIViewController(context: Context) -> ViewControllerType { factory(context) }
}
#endif
