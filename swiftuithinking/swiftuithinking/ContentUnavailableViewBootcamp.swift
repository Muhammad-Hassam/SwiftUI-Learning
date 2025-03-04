//
//  ContentUnavailableViewBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 04/03/2025.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        
        if #available(iOS 17.0, *){
//            ContentUnavailableView(
//                "No Internet Connection",
//                systemImage: "wifi.slash",
//                description: Text("Please Connect to the internet and try again."))
            
//            ContentUnavailableView.search
            ContentUnavailableView.search(text: "abc")
            
            
        }
        else{
            
        }
        }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
