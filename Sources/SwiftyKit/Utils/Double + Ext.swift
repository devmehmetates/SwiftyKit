//
//  Double + Ext.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI
#if DEBUG
extension Double {
    var responsiveW: Double { return (UIScreen.main.bounds.size.width * self) / 100 }
    var responsiveH: Double { return (UIScreen.main.bounds.size.height * self) / 100 }
}
#endif
