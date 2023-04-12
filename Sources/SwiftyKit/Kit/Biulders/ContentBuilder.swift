//
//  ContentBuilder.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

@resultBuilder
final class ContentBuilder {
    static func buildBlock(_ components: UIView...) -> [UIView] {
        components
    }
    
    static func buildEither(first component: UIView) -> [UIView] {
        [component]
    }

    static func buildEither(second component: UIView) -> [UIView] {
        [component]
    }
    
    static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0 }
    }
}
