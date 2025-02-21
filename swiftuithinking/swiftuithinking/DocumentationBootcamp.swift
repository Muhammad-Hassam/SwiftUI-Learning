//
//  DocumentationBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 21/02/2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //Mark Properties
    
    @State var data:[String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert:Bool = false
    
    //Mark Functions
    
    /// Gets an alert with a specified title
    ///
    ///This functions creates and returns an alert immediately. The alert will have a title based on the text
    /// on the parameter but it will NOT have a message
    ///
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    /// - Warning: There is no additional message in this alert
    /// - Parameter text: this is the title for alert
    /// - Returns: Returns an alert with a title
    func getAlert(text:String)-> Alert {
        return Alert(title: Text(text))
    }
    
    //Mark Body
    
    // Working copy - things to do:
    // 1) Fix title
    // 2) Fix alert
    // 3) Fix something else
    
    /*
     Working copy - things to do:
     1) Fix title
     2) Fix alert
     */
    
   
    
    var body: some View {
        NavigationView{ //Start Nav
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("Alert",action: {
                    showAlert.toggle()
                }))
            }
        } //End Nav
        .alert(isPresented: $showAlert, content: {
            getAlert(text: "This is the alert!")
        })

    }

    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer :some View{
        ScrollView{
            Text("Hello")
            ForEach(data, id:\.self){ dataItem in
                Text(dataItem).font(.headline)
            }
        }
    }
    
}


//Mark Preview

#Preview {
    DocumentationBootcamp()
}
