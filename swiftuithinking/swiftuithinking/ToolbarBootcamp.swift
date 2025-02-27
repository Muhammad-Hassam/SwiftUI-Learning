//
//  ToolbarBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text:String = ""
    @State private var paths: [String] = []
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
//                    Text("Hey 🤩")
//                        .font(.largeTitle)
//                        .bold()
//                        .italic()
//                        .foregroundColor(.white)
                    
                    ForEach(0..<50){ _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                }
                
               
            }
            .navigationTitle("Tool-Bar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .principal){
                    Image(systemName: "house.fill")
                }
                ToolbarItem(placement: .keyboard){
                    Image(systemName: "gear")
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .navigationBarHidden(true)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu{
                Button("Screen 1"){
                    paths.append("Screen 1")
                }
                Button("Screen 2"){
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self){value in
                Text("New Sctreen \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
