//
//  Double + Ext.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI
#if DEBUG
extension Double {
    /// Returns the value that is a percentage of the device screen's width.
    ///
    /// For example, `50.0.responsiveW` would return half of the screen's width.
    var responsiveW: Double {
        return (UIScreen.main.bounds.size.width * self) / 100
    }

    /// Returns the value that is a percentage of the device screen's height.
    ///
    /// For example, `50.0.responsiveH` would return half of the screen's height.
    var responsiveH: Double {
        return (UIScreen.main.bounds.size.height * self) / 100
    }}
#endif
