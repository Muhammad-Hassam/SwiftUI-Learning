//
//  AlertBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 18/02/2025.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case success
        case error
    }
    
    func getAlert() -> Alert {
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            primaryButton:.destructive(Text("Delete"),action: {
//                backgroundColor = .red
//            }),
//            secondaryButton:.cancel()
//        )
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was an error!"), message: nil,
                         dismissButton: .default(Text("OK"),action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("This was a success!"), message: nil,
                         dismissButton: .default(Text("OK"),action: {
                backgroundColor = .green
            }))
        default:
            return Alert(
                title: Text("Error")
            )
        }
        
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
                    alertTitle = "Error Uploading Video"
                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2"){
                    alertType = .success
                    alertTitle = "Successfully uploaded video 😎"
                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {getAlert()})
        }
    }
}

#Preview {
    AlertBootcamp()
}
