//
//  ContentView.swift
//  StacksBootcamp
//
//  Created by 张芳涛 on 2023/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(
//            alignment: .center, spacing: -8) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 200)
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 150, height: 150)
//            }
//        ZStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 200)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 150, height: 150)
//        }
        
//        HStack(
//            alignment: .bottom, spacing: 0) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 200)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//            }
//        ZStack {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom, spacing: 5) {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75, alignment: .center)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        VStack(alignment: .center,spacing: 20) {
            Text("5")
                .font(.largeTitle)
                .underline()
            Text("Items in your cart")
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
