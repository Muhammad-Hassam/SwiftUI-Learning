//
//  ScrollViewBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 13/02/2025.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView{
//            VStack{
//                Rectangle()
//                    .frame(height: 300)
//                Rectangle()
//                    .frame(height: 300)
//                Rectangle()
//                    .frame(height: 300)
//            }
//        }
        
//        ScrollView(.vertical,showsIndicators: true,content:{
//            VStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(height: 300)
//                }
//            }
//        })
        
//        ScrollView{
//            VStack{
//                ForEach(0..<10){
//                    index in
//                    ScrollView(.horizontal,showsIndicators: false,content: {
//                        HStack{
//                            ForEach(0..<10){
//                                index in
//                                RoundedRectangle(cornerRadius: 25.0)
//                                    .fill(Color.white)
//                                    .frame(width: 200, height: 200)
//                                    .shadow(radius:10)
//                                    .padding()
//                            }
//                            
//                      
//                        }
//                    })
//                }
//            }
//        }
        
        
        
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){
                    index in
                    ScrollView(.horizontal,showsIndicators: false,content: {
                        LazyHStack{
                            ForEach(0..<50){
                                index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 200)
                                    .shadow(radius:10)
                                    .padding()
                            }
                            
                      
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
