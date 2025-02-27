//
//  NativePopOverBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct NativePopOverBootcamp: View {
    
    @State private var showPopover : Bool = false
    @State private var feedbackOption : [String] = ["Very good 😎","Average 😊",
        "Very bad 😡"]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Button("Click Me"){
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
//            .popover(isPresented: $showPopover){
//                Text("Hello, Subscribers !")
////                    .presentationCompactAdaptation(.popover)
//                    .presentationCompactAdaptation(.sheet)
//            }
            
            .popover(isPresented: $showPopover,
//                     attachmentAnchor: .point(.center),
                     attachmentAnchor: .point(.top),
                     content: {
                ForEach(feedbackOption, id: \.self){option in
                    Button(option){
                        
                    }
                    if option != feedbackOption.last {
                        Divider()
                    }
                } .padding(20)
                    .presentationCompactAdaptation(.popover)
            })
       
        }
    }
}

#Preview {
    NativePopOverBootcamp()
}
