//
//  ContentBuilder.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

@resultBuilder
final class ContentBuilder {
    static func buildBlock(_ components: [UIView]...) -> [UIView] {
        components.flatMap { $0 }
    }

    static func buildExpression(_ expression: UIView) -> [UIView] {
        [expression]
    }

    static func buildExpression(_ expression: [UIView]) -> [UIView] {
        expression
    }

    static func buildOptional(_ components: [UIView]?) -> [UIView] {
        components ?? []
    }

    static func buildEither(first components: [UIView]) -> [UIView] {
        components
    }

    static func buildEither(second components: [UIView]) -> [UIView] {
        components
    }

    static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0 }
    }
}
