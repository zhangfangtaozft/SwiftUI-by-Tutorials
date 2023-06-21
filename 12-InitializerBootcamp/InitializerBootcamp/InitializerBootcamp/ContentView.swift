//
//  ContentView.swift
//  InitializerBootcamp
//
//  Created by 张芳涛 on 2023/6/22.
//

import SwiftUI

struct ContentView: View {
    let count: Int
    let backgroundColor: Color
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.backgroundColor = Color.red
            self.title = "Apple"
        } else {
            self.backgroundColor = Color.orange
            self.title = "Orange"
        }
        
    }
    enum Fruit {
        case apple
        case ornage
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ContentView(count: 5, fruit: .apple)
            ContentView(count: 10, fruit: .ornage)
        }
    }
}
