//
//  ContentView.swift
//  ViewModifierBootcamp
//
//  Created by 张芳涛 on 2023/7/5.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    let backgrroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgrroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color) -> some View {
        self
            .modifier(DefaultButtonViewModifier(backgrroundColor:backgroundColor))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Hello World!")
                .font(.headline)
                .withDefaultButtonFormatting(backgroundColor: .blue)

            
            Text("Hello everyone!")
                .font(.subheadline)
                .withDefaultButtonFormatting(backgroundColor: .green)
            
            Text("Hello!")
                .font(.largeTitle)
                .withDefaultButtonFormatting(backgroundColor: .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
