//
//  ColorManager.swift
//  Plda
//
//  Created by 최유경 on 2023/08/08.
//

import SwiftUI

extension Color {
    //Green
    static let DarkGreen = Color(hex: "427A5B")
    static let LightGreen = Color(hex: "9BCD93")
    //Gray
    static let Gray80 = Color(hex: "666666")
    static let Gray60 = Color(hex: "999999")
    static let Gray40 = Color(hex: "CCCCCC")
    static let Gray20 = Color(hex: "DEDEDE")
    static let Gray10 = Color(hex: "#F3F3F3")
    static let Gray0 = Color(hex: "FDFDFD")

    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

