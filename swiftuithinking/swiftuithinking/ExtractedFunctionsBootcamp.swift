//
//  ExtractedFunctions.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor:Color=Color.yellow
    
    
    func buttonPressed(){
        backgroundColor = .pink
    }
    
    
    var contentLayer: some View{
        VStack{
            Text("Title").font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
}

#Preview {
    ExtractedFunctions()
}
