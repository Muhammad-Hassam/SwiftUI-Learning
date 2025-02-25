//
//  AppStorageBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 25/02/2025.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing:20) {
            Text(currentUserName ?? "Add Name Here")
            
            Button("Save".uppercased()){
                let name: String = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey:"name")
            }
            
        }
//        .onAppear{
//            currentUserName =  UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
