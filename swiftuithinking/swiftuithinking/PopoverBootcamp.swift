//
//  PopoverBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 18/02/2025.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack{Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Button"){
                    showSheet = true
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1 Sheet
//            .sheet(isPresented: $showSheet, content:{
//                NewScreen()
//            })
            
            //Method 2 Transitoin
//            ZStack{
//                if showSheet {
//                    NewScreen(showSheet: $showSheet)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }.zIndex(2.0)
            
            
            //Method 3 Animation Offset
            NewScreen(showSheet:$showSheet)
                .padding(.top,100)
                .offset(y:showSheet ? 0 :UIScreen.main.bounds.height)
                .animation(.spring())
            
         
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showSheet: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //Method 1 sheet
//                presentationMode.wrappedValue.dismiss()
                showSheet = false
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
    PopoverBootcamp()
}
