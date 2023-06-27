//
//  ContentView.swift
//  ConditionalBootcamp
//
//  Created by 张芳涛 on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            Button("Is loading\(isLoading.description)") {
                isLoading.toggle()
            }
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            if isLoading {
                ProgressView()
            }
            
            Spacer()
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
