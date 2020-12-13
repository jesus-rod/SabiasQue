//
//  Colors.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

struct ColorConstants {
    static let primary = Color(hex: 0x57419D)
    static let primaryText = Color(hex: 0x333333)
    static let secondaryText = Color(hex: 0x4F4F4F)
    static let tertiaryText = Color(hex: 0x9E9E9E)
    static let background = Color(hex: 0xE5E5E5)
    static let contentBackground = Color(hex: 0xF5F5FA)
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
