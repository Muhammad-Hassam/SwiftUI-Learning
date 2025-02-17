//
//  Padding.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 13/02/2025.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .padding(.all,5)
        //            .padding(.horizontal,10)
        //            .padding(.vertical,10)
        //            .padding(.leading,10)
        //            .background(Color.blue)
        //
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .font(.largeTitle)
        //            .fontWeight(.bold)
        //            .padding(.leading,10)
        //            .frame(maxWidth: .infinity,alignment: .leading)
        //            .background(Color.yellow)
        //            .padding(10)
        
        
        VStack(alignment: .leading){
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom,2)
            Text("This is the discription  of what  we will do on  this screen. It is multiple lines and we will align the text to the leading edge")
            
        }
        .background(Color.white)
        .padding()
        .padding(.vertical,2)
        .background(Color.blue
                    
            .cornerRadius(5)
            .shadow(
                color:Color.black.opacity(0.7),
                radius: 10,
                x:0.0,y:0.0
        )
        )
        .padding(.horizontal,10)
    }
}

#Preview {
    Padding()
}
