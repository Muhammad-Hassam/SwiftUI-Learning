//
//  GroupBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack{
            Text("Hello World!")
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.green)
        .font(.headline)

    }
}

#Preview {
    GroupBootcamp()
}
