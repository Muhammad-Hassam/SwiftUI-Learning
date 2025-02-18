//
//  SheetsBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 18/02/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .sheet(isPresented: $showSheet,content: {
            
            // Do not add conditional logic
            
//                SecondScreen()
//            })
            .fullScreenCover(isPresented: $showSheet,content: {
                SecondScreen()
            })

        }
    }
}


struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding(10)
                    .background(Color.white.cornerRadius(10))
                    .padding(10)
            })


        }
    }
}

#Preview {
    SheetsBootcamp()
}
