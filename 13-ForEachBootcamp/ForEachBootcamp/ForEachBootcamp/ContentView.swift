//
//  ContentView.swift
//  ForEachBootcamp
//
//  Created by 张芳涛 on 2023/6/22.
//

import SwiftUI

struct ContentView: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { i in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.green)
                    Text("\(data[i]): \(i)")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
