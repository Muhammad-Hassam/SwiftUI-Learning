//
//  DarkmodeBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct DarkmodeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color in PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color in SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color in BLACK")
                        .foregroundColor(.black)
                    Text("This color in WHITE")
                        .foregroundColor(.white)
                    Text("This color in RED")
                        .foregroundColor(.red)
                    Text("This color in globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color in locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkmodeBootcamp()
    
}
