//
//  AnyLayoutBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
         
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gama")
            }
                
//                if horizontalSizeClass == .compact {
//                    VStack {
//                        Text("Alpha")
//                        Text("Beta")
//                        Text("Gama")
//                    }
//                }
//            else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gama")
//                }
//            }
            
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
