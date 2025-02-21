//
//  IfLetGuardBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    func loadData(){
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        }
        else{
            displayText = "Error. There is no User ID!"
        }
    }
    
    
    func loadData2(){
        guard let userID = currentUserID else{
            displayText = "Error. There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
    
    
    var body: some View {
        NavigationView{
            VStack {
                Text ("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                // Do Not use ! Ever !!!
                // Do not force unwrap values
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading{
                    ProgressView()
                }
                
                
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
//                loadData()
                loadData2()
            }
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
