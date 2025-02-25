//
//  introView.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 25/02/2025.
//

import SwiftUI

struct introView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
                                 
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.green,Color.gray]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height
            ).ignoresSafeArea()
            
            if currentUserSignedIn {
                OnBoradProfileView()
            }
            else {
                OnboardingView()
            }
                
        }
    }
}

#Preview {
    introView()
}
