//
//  ConditionalBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle:Bool=false
    @State var showRectangle:Bool=false
    @State var isLoading:Bool=false
    var body: some View {
        
        VStack(spacing:20){
            Button("Circle Button: \(showCircle.description)"){
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            Button("Loading Button: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading{
                ProgressView()
            }
            if showCircle{
                Circle()
                    .frame(width: 100,height: 100)
            }
            if showRectangle{
                Rectangle()
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
            }
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 150,height: 100)
            }
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 150,height: 100)
            }
//            else{
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 150,height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
