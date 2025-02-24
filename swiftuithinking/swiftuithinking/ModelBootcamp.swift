//
//  ModelBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 24/02/2025.
//

import SwiftUI

struct UserModel: Identifiable {
    let id:String = UUID().uuidString
    let displayName: String
    let userName: String
    let followContent: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users:[UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followContent: 100,isVerified: true),
        UserModel(displayName: "Emily", userName: "Emily123", followContent: 55,isVerified: false),
        UserModel(displayName: "Smantha", userName: "ninja", followContent: 355,isVerified: true),
        UserModel(displayName: "Chris", userName: "Chris123", followContent: 88,isVerified: false)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users){name in
                    HStack (spacing: 10.0){
                        Circle()
                            .frame(width: 35,height: 35)
                        VStack(alignment: .leading){
                            Text(name.displayName)
                                .font(.headline)
                            Text("@\(name.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        if name.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack{
                            Text("\(name.followContent)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                      
                   
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
