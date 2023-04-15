//
//  ContentBuilder.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit

/// A result builder used to build arrays of `UIView` objects.
@resultBuilder
public final class ContentBuilder {
    
    /// Builds an array of `UIView` objects from a block of components.
    ///
    /// - Parameter components: A variadic list of arrays of `UIView` objects.
    /// - Returns: An array of `UIView` objects.
    public static func buildBlock(_ components: [UIView]...) -> [UIView] {
        components.flatMap { $0 }
    }
    
    /// Builds an array of `UIView` objects from a single expression.
    ///
    /// - Parameter expression: A single `UIView` object.
    /// - Returns: An array containing the single `UIView` object.
    public static func buildExpression(_ expression: UIView) -> [UIView] {
        [expression]
    }
    
    /// Builds an array of `UIView` objects from an array of `UIView` objects.
    ///
    /// - Parameter expression: An array of `UIView` objects.
    /// - Returns: The same array of `UIView` objects.
    public static func buildExpression(_ expression: [UIView]) -> [UIView] {
        expression
    }
    
    /// Builds an array of `UIView` objects from an optional array of `UIView` objects.
    ///
    /// - Parameter components: An optional array of `UIView` objects.
    /// - Returns: An empty array if `components` is `nil`, otherwise `components`.
    public static func buildOptional(_ components: [UIView]?) -> [UIView] {
        components ?? []
    }
    
    /// Builds an array of `UIView` objects from a "first" alternative.
    ///
    /// - Parameter components: An array of `UIView` objects.
    /// - Returns: The same array of `UIView` objects.
    public static func buildEither(first components: [UIView]) -> [UIView] {
        components
    }
    
    /// Builds an array of `UIView` objects from a "second" alternative.
    ///
    /// - Parameter components: An array of `UIView` objects.
    /// - Returns: The same array of `UIView` objects.
    public static func buildEither(second components: [UIView]) -> [UIView] {
        components
    }
    
    /// Builds an array of `UIView` objects from an array of arrays of `UIView` objects.
    ///
    /// - Parameter components: An array of arrays of `UIView` objects.
    /// - Returns: A flattened array of `UIView` objects.
    public static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0 }
    }
}
