//
//  TransitionBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView:Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    )
           
                    .animation(.easeInOut)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal:  .move(edge: .bottom))
                    )
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
