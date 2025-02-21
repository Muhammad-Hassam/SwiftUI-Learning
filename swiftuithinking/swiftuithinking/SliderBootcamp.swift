//
//  SliderBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating: ")
                .font(.headline)
                .foregroundColor(.blue)
            Text(String(format: "%.0f", sliderValue))
            .font(.largeTitle)
            .foregroundColor(.orange)
            Slider(value: $sliderValue,
                   in: 1...5,step: 0.5,
                   onEditingChanged: { (_) in
                    color = .green},
                   minimumValueLabel: Text("0")
                .font(.subheadline)
                .foregroundColor(.orange),
                   maximumValueLabel: Text("5")
                .font(.subheadline)
                .foregroundColor(.orange),
                   label:{Text("Title")}
            ).accentColor(.brown)
            .padding()
            
        }
    }
}

#Preview {
    SliderBootcamp()
}
