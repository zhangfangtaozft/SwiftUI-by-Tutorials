//
//  ContentView.swift
//  StepperBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    @State var stepperValue = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100, alignment: .center)
            Stepper("Stepper 2") {
                // increment
                widthIncrement += 10.0
            } onDecrement: {
                // decrement
                widthIncrement -= 10.0
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
