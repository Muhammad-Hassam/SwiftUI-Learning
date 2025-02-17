//
//  ExtractedSubviewsBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    
    
    
    var contentLayer:some View {
        HStack{
            VStackView(title: "Apples", count: 1, color: .blue)
            VStackView(title: "Apples", count: 10, color: .green)
            VStackView(title: "Apples", count: 1, color: .blue)
     
        }
    }
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.all)
            contentLayer
        }
    }
}

#Preview {
    ExtractedSubviewsBootcamp()
}

struct VStackView: View {
    
    let title:String
    let count:Int
    let color:Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }.padding()
            .background(color)
            .cornerRadius(10)
    }
}
