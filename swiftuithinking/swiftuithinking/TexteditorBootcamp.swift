//
//  TexteditorBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 19/02/2025.
//

import SwiftUI

struct TexteditorBootcamp: View {
    
    @State var textEditor:String = "Placeholder"
    @State var savedText:String = ""

    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditor)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.7))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditor
                    textEditor = ""
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .cornerRadius(10)
            .padding()
                .navigationTitle("TextEditor Bootcamp!")
           
        }
        
    }
}

#Preview {
    TexteditorBootcamp()
}
