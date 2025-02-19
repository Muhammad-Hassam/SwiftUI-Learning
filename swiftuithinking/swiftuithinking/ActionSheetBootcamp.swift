//
//  ActionSheetBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 18/02/2025.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet:Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost

    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    func getActionSheet()->ActionSheet{
        //        ActionSheet(title: Text("This is the title!"))
        //        let button1: ActionSheet.Button = .default(Text("Default"))
        //        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        //        let button3: ActionSheet.Button = .cancel()
        //        return ActionSheet(
        //            title: Text("This is the title!"),
        //            message: Text("This is the message"),
        //            buttons: [button1, button2, button3]
        //        )
        
        
        let ShareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        let ReportButton: ActionSheet.Button = .destructive(Text("Report")){
            
        }
        let DeleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title:String = "What would you like to do?"
        switch actionSheetOption {
        case .isMyPost:
                    return ActionSheet(
                        title: Text(title),
                        message: nil,
                        buttons: [ShareButton, ReportButton, cancelButton]
                    )
        case .isOtherPost:
            return ActionSheet(
                title: Text(title),
                message: nil,
                buttons: [ShareButton, ReportButton, DeleteButton, cancelButton]
            )
        }
    }
    var body: some View {
        
        
        VStack{
            HStack {
                Circle()
                    .frame(width: 30,height: 30)
                Text("@username")
                Spacer()
                Button(
                    action: {
                        actionSheetOption = .isOtherPost
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                    }
                )
               
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        Button("Click Me"){
            showActionSheet.toggle()
        }
      
    }
}

#Preview {
    ActionSheetBootcamp()
}
