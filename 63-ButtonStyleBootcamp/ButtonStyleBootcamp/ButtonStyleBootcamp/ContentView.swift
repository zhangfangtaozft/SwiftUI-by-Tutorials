//
//  ContentView.swift
//  ButtonStyleBootcamp
//
//  Created by 张芳涛 on 2023/7/5.
//

import SwiftUI

//struct ButtonStyleBootcamp: View {
//
//}
struct ButtonPressableStyle: ButtonStyle {
    let scale: CGFloat
    
    init(scale: CGFloat) {
        self.scale = scale
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scale : 1.0)
//            .brightness(configuration.isPressed ? 0.9 : 1.0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}
extension View {
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View {
        self.buttonStyle(ButtonPressableStyle(scale: scaledAmount))
    }
}

struct ContentView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Click Me")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
        }
        .withPressableStyle()
        .padding(40)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
