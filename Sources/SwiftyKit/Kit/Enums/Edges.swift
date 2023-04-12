//
//  Edges.swift
//  
//
//  Created by Mehmet Ateş on 12.04.2023.
//

import UIKit
import SwiftUI

public enum Edges: Int8, CaseIterable {
    case top
    case leading
    case bottom
    case trailing
    
    public struct Set: OptionSet {
        public init(rawValue: Int8) { self.rawValue = rawValue }
        public let rawValue: Int8

        public static let top             = Set(rawValue: 1 << 0)
        public static let leading         = Set(rawValue: 1 << 1)
        public static let bottom          = Set(rawValue: 1 << 2)
        public static let trailing        = Set(rawValue: 1 << 3)
        public static let horizontal: Set = [.leading, .trailing]
        public static let vertical: Set   = [.top, .bottom]
        public static let all: Set        = [.leading, .trailing, .top, .bottom]
    }
}
