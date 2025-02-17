//
//  ButtonBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 14/02/2025.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title:String="Press Me"
    var body: some View {
        Text(title)
        Button("Add Me") {
            self.title="Button was pressed"
        }
        .foregroundColor(Color.white)
        .padding()
        .background(Color.red)
        .cornerRadius(10)
        
        
        Button( action: {
            self.title="Button 2 was pressed"
        }, label: {
            Text("Button")
        })
        .accentColor(.white)
        .padding(.horizontal,20)
        .padding(.vertical,10)
        .background(Color.green)
        .cornerRadius(10)
        
        Button( action: {
            self.title="Button 3"
        }, label: {
            Circle()
                .fill(Color.white)
                .frame(width: 75,height: 75)
                .shadow(radius: 10)
                .overlay(
                    Image(
                        systemName: "heart.fill"
                    ).font(.largeTitle)
                        .foregroundColor(Color.red)
                )
        })
        
        Button( action: {
            self.title="Button 4"
        }, label: {
            Text("Finish".uppercased())
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
                .padding()
                .padding(.horizontal,15)
                .background(
                    Capsule()
                        .stroke(Color.gray,lineWidth: 3.0)
                    
                ).padding()
        })
  
    }
}

#Preview {
    ButtonBootcamp()
}
