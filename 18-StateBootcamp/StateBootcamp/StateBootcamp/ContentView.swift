//
//  ContentView.swift
//  StateBootcamp
//
//  Created by 张芳涛 on 2023/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color.green
    @State var myTitle = "My Title"
    @State var count = 0
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20) {
                    Button("Button1") {
                        backgroundColor = .red
                        myTitle = "Button1: My Title"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button2: My Title"
                        count += 2
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
