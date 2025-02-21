//
//  TabViewBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 1
    let icons:[String] = ["heart.fill","globe","house.fill","person.fill"]
    
    var body: some View {
        
        TabView{
            ForEach(icons, id:\.self){data in
                Image(systemName: data)
                    .resizable()
                    .scaledToFit()
                    .padding()
                  
                
            }
           
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)

        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectedTab){
//            HomeView(selectedTab: $selectedTab)
//                .tabItem({
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                })
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem({
//                    Image(systemName: "globe")
//                    Text("Browse")
//                })
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem({
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                })
//                .tag(2)
//        }
//        .background(.gray)
//        .accentColor(.green)
        
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
          
            Button(action: {
                selectedTab = 2
            }, label: {
                Text("Go to profile")
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(10)
            })
            }
        }
    }
}
