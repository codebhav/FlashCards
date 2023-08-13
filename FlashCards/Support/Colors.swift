//
//  Colors.swift
//  FlashCards
//
//  Created by whybhav on 10/08/23.
//

import SwiftUI

extension LinearGradient {
    static var appGradient: LinearGradient { LinearGradient(
        gradient: Gradient(
            colors: [
                Color(red: 0.87, green: 0.92, blue: 0.94),
                Color(red: 0.67, green: 0.81, blue: 0.86)
            ]
        ),
        startPoint: .leading,
        endPoint: .trailing
    )
 }
}

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

extension Color {
    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
    static let neumorphictextColor = Color(red: 132 / 255, green: 132 / 255, blue: 132 / 255)
}
