//
//  NeuButtonStyle.swift
//  RGBullsEye
//
//  Created by Boris Ofon on 12/30/22.
//
import SwiftUI



struct NeuButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat
    
    func makeBody(configuration: Self.Configuration)
    -> some View {
        configuration.label
        // Move frame and background modifiers here
            .opacity(configuration.isPressed ? 0.2 : 1)
            .frame(width: 327, height: 48)
            .background(
                Group {
                    if configuration.isPressed {
                        Capsule()
                            .fill(Color.element)
                    } else {
                        Capsule()
                            .fill(
                                Color.element)
                            .northWestShadow()
                    }
                }
                )
            .foregroundColor(Color(UIColor.systemBlue))
    }
}
