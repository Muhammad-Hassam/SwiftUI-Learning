//
//  TextfieldBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 19/02/2025.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray:[String] = []
    
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textInAppropriate ()->Bool{
        if textFieldText.count>3{
            return true
        }
        else{
            return false
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Try something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.5).cornerRadius(10))
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
                
                Button(action: {
                    saveText()
                }, label: {
                    Text("Save".uppercased())
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(textInAppropriate() ? Color.blue.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                    
                }).disabled(!textInAppropriate())
                
                ForEach(dataArray,id: \.self){ data in
                    Text(data)
                }
                Spacer()
            }
            
            .navigationTitle("Textfield Bootcamp")
        }
    }
}

#Preview {
    TextfieldBootcamp()
}
