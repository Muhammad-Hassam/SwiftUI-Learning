//
//  SubmitTextFieldBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...",text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Something to the console! ")
            }
        
        TextField("Placeholder...",text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("Something to the console! ")
            }
        
        TextField("Placeholder...",text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Something to the console! ")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
