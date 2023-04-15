//
//  EdgesHelper.swift
//  
//
//  Created by Mehmet Ateş on 16.04.2023.
//

import UIKit

/// A helper class that converts an Edges set to a UIEdgeInsets struct.
public struct EdgesHelper {
    /// Converts an Edges set to a UIEdgeInsets struct with a specified size for all edges.
    /// - Parameters:
    ///   - edges: The set of edges to be converted.
    ///   - size: The size to be applied to all edges.
    /// - Returns: The resulting UIEdgeInsets struct.
    public static func edgeInsets(for edges: Edges.Set, withSize size: CGFloat) -> UIEdgeInsets {
        var edgeInsets = UIEdgeInsets.zero
        if edges.contains(.top) {
            edgeInsets.top = size
        }
        if edges.contains(.leading) {
            edgeInsets.left = size
        }
        if edges.contains(.bottom) {
            edgeInsets.bottom = size
        }
        if edges.contains(.trailing) {
            edgeInsets.right = size
        }
        return edgeInsets
    }
}
