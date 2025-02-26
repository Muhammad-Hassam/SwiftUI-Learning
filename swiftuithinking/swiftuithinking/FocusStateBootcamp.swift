//
//  FocusStateBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 26/02/2025.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
//    @FocusState private var userNameIsFocus: Bool
    @State private var username:String = ""
//    @FocusState private var userPasswordIsFocus: Bool
    @State private var password:String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing:30) {
            TextField("Add your name here...", text:$username)
                .focused($fieldInFocus,equals: .username)
//                .focused($userNameIsFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            SecureField("Add your name here...", text:$password)
                .focused($fieldInFocus,equals: .password)
//                .focused($userPasswordIsFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            Button("Sign Up 🔥"){
                let userNameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if userNameIsValid && passwordIsValid {
                print("Sign Up")
                }
                else if userNameIsValid {
                    fieldInFocus = .password
//                    userNameIsFocus = false
//                    userPasswordIsFocus = true
                }
                else {
                    fieldInFocus = .username
//                    userNameIsFocus = true
//                    userPasswordIsFocus = false
                }
            }
            
//            Button("Toggle Focus State"){
//                userNameIsFocus.toggle()
//            }
        }.padding()
    }
}

#Preview {
    FocusStateBootcamp()
}
