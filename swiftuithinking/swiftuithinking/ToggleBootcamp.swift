//
//  ToggleBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 19/02/2025.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn:Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }.font(.title)
            Toggle(isOn: $toggleIsOn, label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding(.horizontal,100)
    }
}

#Preview {
    ToggleBootcamp()
}
