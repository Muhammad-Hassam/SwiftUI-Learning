//
//  ViewThatFitsBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 28/02/2025.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display")
                Text("This is some text")
            }
            
//            Text("This is some text that I would like to display to the user!")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
//                .padding()
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
        .cornerRadius(10)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
