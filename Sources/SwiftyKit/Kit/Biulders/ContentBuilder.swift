//
//  ContentBuilder.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

@resultBuilder
public final class ContentBuilder {
    public static func buildBlock(_ components: [UIView]...) -> [UIView] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: UIView) -> [UIView] {
        [expression]
    }

    public static func buildExpression(_ expression: [UIView]) -> [UIView] {
        expression
    }

    public static func buildOptional(_ components: [UIView]?) -> [UIView] {
        components ?? []
    }

    public static func buildEither(first components: [UIView]) -> [UIView] {
        components
    }

    public static func buildEither(second components: [UIView]) -> [UIView] {
        components
    }

    public static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0 }
    }
}
