//
//  SafeAreaInsets.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct SafeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List(0..<10){ index in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("SafeArea Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                ,alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsets()
}
