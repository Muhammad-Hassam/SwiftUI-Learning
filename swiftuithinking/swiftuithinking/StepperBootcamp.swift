//
//  Stepper.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 20/02/2025.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack{
            Stepper("stepper: \(stepperValue)", value: $stepperValue).padding(10)
            RoundedRectangle(cornerRadius: 10).frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2"){
                withAnimation(.easeOut){
                    widthIncrement += 10
                }
            }onDecrement: {
                widthIncrement -= 10
            }
        }
            
    }
}

#Preview {
    StepperBootcamp()
}
