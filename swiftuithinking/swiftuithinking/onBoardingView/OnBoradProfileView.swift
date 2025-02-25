//
//  ProfileView.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 25/02/2025.
//

import SwiftUI

struct OnBoradProfileView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                Text(currentUserName ?? "Your name Here")
                Text("This user is \(currentUserAge ?? 0) years old!")
                Text("Their gender is \(currentUserGender?.capitalized ?? "unknown")")
                Text("Sign Out")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal,40)
                    .onTapGesture {
                        signOut()
                    }
            }
            .font(.title)
            .foregroundColor(.red)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
        }
        
    }
}

#Preview {
    OnBoradProfileView()
}
