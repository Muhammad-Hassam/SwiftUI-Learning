//
//  OnAppearBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText:String = "Some Text."
    @State var count:Int  = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                           
                        
                    }
                }
                
            }.onAppear(
                perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        myText = "This is the new text!"
                    }
                }
            )
            .onDisappear(perform: {
                myText = "Ending text..."
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
