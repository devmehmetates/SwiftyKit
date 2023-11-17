//
//  Edges.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit
import SwiftUI

/// An enum representing the edges of a rectangle or a view.
@frozen public enum Edges: Int8, CaseIterable {
    case top
    case leading
    case bottom
    case trailing
    
    /// An option set representing a set of edges.
    public struct Set: OptionSet {
        public init(rawValue: Int8) { self.rawValue = rawValue }
        public let rawValue: Int8

        /// The top edge.
        public static let top = Set(rawValue: 1 << 0)
        /// The leading edge.
        public static let leading = Set(rawValue: 1 << 1)
        /// The bottom edge.
        public static let bottom = Set(rawValue: 1 << 2)
        /// The trailing edge.
        public static let trailing = Set(rawValue: 1 << 3)
        /// The horizontal edges.
        public static let horizontal: Set = [.leading, .trailing]
        /// The vertical edges.
        public static let vertical: Set = [.top, .bottom]
        /// All edges.
        public static let all: Set = [.leading, .trailing, .top, .bottom]
    }
}
