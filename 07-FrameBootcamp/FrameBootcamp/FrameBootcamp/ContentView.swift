//
//  ContentView.swift
//  FrameBootcamp
//
//  Created by 张芳涛 on 2023/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world!")
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(height: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment:.leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
