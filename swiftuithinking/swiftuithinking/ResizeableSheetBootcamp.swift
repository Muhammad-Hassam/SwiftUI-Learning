//
//  ResizeableSheetBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 27/02/2025.
//

import SwiftUI

struct ResizeableSheetBootcamp: View {
    
    @State private var showsheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me!"){
            showsheet.toggle()
        }
        .sheet(isPresented: $showsheet){
            MyNextView(detents: $detents)
//                .presentationDetents([.medium])
//              .presentationDetents([.fraction(0.1),.height(200),.medium, .large])
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.height(200)])
                .presentationDetents([.fraction(0.2),.height(300),.medium, .large],selection: $detents)
                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled(true)
        }
//        .onAppear{
//            showsheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body:some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack{
                Button("Fraction 20%"){
                    detents  = .fraction(0.2)
                }
                Button("Height 300"){
                    detents  = .height(300)
                }
                Button("Medium"){
                    detents  = .medium
                }
                Button("Large"){
                    detents  = .large
                }
            }
        }
    }
}

#Preview {
    ResizeableSheetBootcamp()
}
