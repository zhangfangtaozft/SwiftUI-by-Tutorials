//
//  ContentView.swift
//  AnimationBootcamp
//
//  Created by 张芳涛 on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated = false
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(
//                    .easeIn(duration: 3.0)
//                    .delay(1.0)
//                    .repeatCount(100, autoreverses: true)
//                )
//                {
                    isAnimated.toggle()
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius:  isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(x: isAnimated ? 50: 0 , y: isAnimated ? 300 : 0)
                .animation(Animation.easeInOut(duration: 2.0).repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
