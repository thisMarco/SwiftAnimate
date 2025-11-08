//
//  ContentView.swift
//  SampleApp
//
//  Created by Marco Picchillo on 30/10/2025.
//

import SwiftUI
import SwiftAnimate

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Growing Button") { }
                .buttonStyle(GrowingButton())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
