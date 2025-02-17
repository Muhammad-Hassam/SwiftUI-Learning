//
//  AnimationBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimate:Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
//                        .repeatCount(5,autoreverses: false)
//                        .delay(2.0)
                        
                ){
                    isAnimate.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimate ? 50 : 25)
                .fill(isAnimate ?.red :.cyan )
                .frame(width:isAnimate ? 100 : 300 ,height: isAnimate ? 100 : 300 )
                .rotationEffect(Angle(degrees: isAnimate ? 360 : 0))
                .offset(y:isAnimate ? 300 : 0 )
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
