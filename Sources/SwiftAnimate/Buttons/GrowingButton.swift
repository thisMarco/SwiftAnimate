//
//  GrowingButton.swift
//  SwiftAnimate
//
//  Created by Marco Picchillo on 03/11/2025.
//

// https://www.hackingwithswift.com/quick-start/swiftui/customizing-button-with-buttonstyle

import SwiftUI

public struct GrowingButton: ButtonStyle {
    private let backgroundColor: Color
    private let duration: CGFloat
    private let padding: EdgeInsets
    private let scaleEffect: CGFloat
    private let textColor: Color
    
    public init(
        backgroundColor: Color = .accentColor,
        textColor: Color = .primary,
        scaleEffect: CGFloat = 1.2,
        padding: EdgeInsets = .init(top: 16, leading: 16, bottom: 16, trailing: 16),
        easyOutDuration: CGFloat = 0.2
    ) {
        self.backgroundColor = backgroundColor
        self.duration        = easyOutDuration
        self.padding         = padding
        self.scaleEffect     = scaleEffect
        self.textColor       = textColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(padding)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .scaleEffect(configuration.isPressed ? scaleEffect : 1.0)
            .animation(.easeInOut(duration: duration), value: configuration.isPressed)
    }
}
