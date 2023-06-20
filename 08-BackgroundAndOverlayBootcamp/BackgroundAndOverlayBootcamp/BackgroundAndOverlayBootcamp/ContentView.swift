//
//  ContentView.swift
//  BackgroundAndOverlayBootcamp
//
//  Created by 张芳涛 on 2023/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello World!")
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//
//            )
//            .background(
//            Circle()
//                .fill(Color.red)
//                .frame(width: 120, height: 120, alignment: .center)
//            )
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .overlay(
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                    , alignment: .topLeading)
//                    .background(
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 150, height: 150)
//                    , alignment: .bottomTrailing
//                    )
            
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10.0)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                            .shadow(color: .black, radius: 10, x: 0.0, y: 10.0)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                )
                                    , alignment: .bottomTrailing
                        
                        )
                            )
                        
                   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
