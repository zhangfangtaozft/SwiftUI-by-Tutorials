//
//  ContentView.swift
//  SafeAreaBootcamp
//
//  Created by 张芳涛 on 2023/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello World!")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//            .edgesIgnoringSafeArea(.all)
//            .ignoresSafeArea(edges: [.top])
//        VStack {
//            Text("Hello World!")
//                .padding(.top, 50.0)
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
//        .edgesIgnoringSafeArea(.all)
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Hello, World!")
//                    Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
//            .background(.green)
//            .edgesIgnoringSafeArea(.all)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .background(Color.yellow)
    }
}
