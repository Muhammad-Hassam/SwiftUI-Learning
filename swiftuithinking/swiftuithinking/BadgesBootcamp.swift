//
//  BadgesBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 26/02/2025.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        
        
        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
                .badge("New")

        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }.badge(2)
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }.badge(1)
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
