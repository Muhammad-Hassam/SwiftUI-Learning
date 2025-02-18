//
//  NavigationViewBottcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 18/02/2025.
//

import SwiftUI

struct NavigationViewBottcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                
                NavigationLink("New Screen",destination: SecondsScreen())
                Text("Hello, World !")
                Text("Hello, World !")
                Text("Hello, World !")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: SecondScreen(), label: {
                            Image(systemName: "gear")
                        }
                    )
                    .accentColor(.pink)
                   )
//            .navigationBarHidden(true)
        }
    }
}


struct SecondsScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.red.edgesIgnoringSafeArea(.all)
                .navigationTitle("Second screen")
                .navigationBarHidden(true)
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
    NavigationViewBottcamp()
}
