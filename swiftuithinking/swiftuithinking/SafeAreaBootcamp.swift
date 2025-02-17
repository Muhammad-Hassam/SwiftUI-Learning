//
//  SafeAreaBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 14/02/2025.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.red)
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.blue)
//            .ignoresSafeArea(.keyboard, edges: .bottom)
//            .ignoresSafeArea(.container, edges: [.top, .horizontal])
//            .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
//                           Color.clear
//                               .frame(height: 20)
//                               .background(Material.bar)
//            }
        
        
//        ZStack{
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            VStack{
//                Text("Hello World!")
//                Spacer()
//            }.frame(maxWidth: .infinity,maxHeight: .infinity)
//           .ignoresSafeArea()
//        }
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<100){ index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 150)
                        .padding(20)
                    
                }
            }
        }
        .background(
            Color.red,
            ignoresSafeAreaEdges: .all
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
