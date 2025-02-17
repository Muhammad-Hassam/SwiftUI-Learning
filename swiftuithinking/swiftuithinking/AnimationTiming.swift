//
//  AnimationTiming.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 17/02/2025.
//

import SwiftUI

struct AnimationTiming: View {
    @State var isAnimating:Bool = false
    let timing:Double = 1.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,height: 100)
                .animation(Animation.linear(duration: timing),value: UUID())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,height: 100)
                .animation(Animation.easeIn(duration: timing),value: UUID())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:isAnimating ? 350 : 50,height: 100)
                .animation(Animation.easeInOut(duration: timing),value: UUID())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeOut(duration: timing),value: UUID())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.spring(
                    response: 2.0,
                    dampingFraction: 0.3,
                    blendDuration: timing
                
                ),value: UUID())
        }
    }
}

#Preview {
    AnimationTiming()
}
