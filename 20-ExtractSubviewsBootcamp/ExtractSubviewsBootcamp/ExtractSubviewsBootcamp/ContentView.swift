//
//  ContentView.swift
//  ExtractSubviewsBootcamp
//
//  Created by 张芳涛 on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            HStack {
                MyItem(title: "MyTitle", count: 123678130, color: Color.red, cornerRadius: 15)
                MyItem(title: "The second MyTitle", count: 12000, color: .green, cornerRadius: 20)
                MyItem(title: "The third MyTitle", count: 1000, color: .brown, cornerRadius: 10)
            }
            
        }
    }
    
    struct MyItem: View {
        let title: String
        let count: Int
        let color: Color
        let cornerRadius: CGFloat
        
        var body: some View {
            VStack {
                Text(title)
                Text("\(count)")
            }
            .padding()
            .background(color)
            .cornerRadius(cornerRadius)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
