//
//  BindingBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor:Color = Color.green
    @State var title:String = "Press Me"
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Text(title)
                ExtractedView(backgroundColor:$backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ExtractedView: View {
    
    @Binding var backgroundColor:Color
    @Binding var title:String
    @State var buttonClr:Color=Color.blue
    
    var body: some View {
        Button(action: {
            backgroundColor = .pink
            buttonClr = .yellow
            title = "Pressed"
        }, label:{
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonClr)
                .cornerRadius(10)
        })
    }
}
