//
//  ColorPickerBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 20/02/2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor:Color = .green
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
