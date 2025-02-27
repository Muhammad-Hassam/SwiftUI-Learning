//
//  NavigationStackBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple","Orange","Banana"]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView{
                VStack(spacing: 10){
                    Button("Super segue!") {
                        stackPath.append(contentsOf: ["Coconut","Banana","Mango"])
                    }
                    ForEach(fruits, id: \.self){ fruit in
                        NavigationLink(value: fruit){
                            Text(fruit)
                        }
                    }
                    ForEach(0..<10){x in
                        NavigationLink(value: x){
                            Text("Click Me \(x)")
                        }
              }
                }
            }
       
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self){value in
                MySecondScreen(value: value)
                
            }
            .navigationDestination(for: String.self){value in
                Text("Another Screen \(value)")
                
            }
        }
    }
}


struct MySecondScreen:View {
    
    let value: Int
    
    init(value: Int){
        self.value = value
        print("Init Screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
