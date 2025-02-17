//
//  GridBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 14/02/2025.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns:[GridItem]=[
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(75),spacing: nil,alignment: nil),
//        GridItem(.fixed(100),spacing: nil,alignment: nil),
//        GridItem(.fixed(75),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil)
                
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
//        GridItem(.flexible(),spacing: nil,alignment: nil),
//        GridItem(.flexible(),spacing: nil,alignment: nil)
        
//        GridItem(.adaptive(minimum: 50, maximum: 300),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300),spacing: nil,alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns:columns,
                      alignment: .center,
                      spacing: 10,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                Section {
                                    ForEach(0..<50){index in
                                        Rectangle().frame(height: 150)
                                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                }

                Section {
                                    ForEach(0..<50){index in
                                        Rectangle()
                                            .fill(Color.green)
                                            .frame(height: 150)
                                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                }

                
//                ForEach(0..<50){index in
//                    Rectangle().frame(height: 150)
//                }
            }
            )
        }
        
//        LazyVGrid(columns: columns){
//            ForEach(0..<50){index in
//                Rectangle().frame(height: 50)
//                
//            }
//            
//        }
    }
}

#Preview {
    GridBootcamp()
}
