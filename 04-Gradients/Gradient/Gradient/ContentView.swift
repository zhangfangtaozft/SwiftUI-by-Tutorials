//
//  ContentView.swift
//  Gradient
//
//  Created by 张芳涛 on 2023/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.yellow, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red,Color.orange, Color.yellow, Color.green, Color.cyan, Color.blue, Color.purple]), center: .center, startRadius: 5, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [Color.red,Color.orange, Color.yellow, Color.green, Color.cyan, Color.blue, Color.purple]), center: .topLeading, angle: .degrees(180 + 45))
            )
                
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
