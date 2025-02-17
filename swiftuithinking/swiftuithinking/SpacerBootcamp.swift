//
//  SpacerBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 13/02/2025.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        HStack(spacing:0){
            Rectangle()
                .fill(Color.green)
                .frame(width: 50,height: 50)
            Spacer(minLength: nil)
                .frame(height: 10)
                .background(Color.blue)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50,height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.blue)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50,height: 50)

        }
        .padding()
        
    }
}

#Preview {
    SpacerBootcamp()
}
