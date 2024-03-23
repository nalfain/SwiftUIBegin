//
//  StepperUI.swift
//  SwiftUIBegin
//
//  Created by MP on 23.03.2024.
//

import SwiftUI

struct StepperUI: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper 1: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            
            Stepper("Stepper 2:") {
                //Increment
                widthIncrement(amount: 100)
            } onDecrement: {
                //Decrement
                widthIncrement(amount: -100)
            }
        }
    }
    func widthIncrement(amount: CGFloat)  {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperUI_Previews: PreviewProvider {
    static var previews: some View {
        StepperUI()
    }
}
