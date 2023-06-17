//
//  ContentView.swift
//  Text
//
//  Created by 张芳涛 on 2023/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!".lowercased())
            .font(.system(size: 30))
            .fontWeight(.semibold)
            .fontWidth(.compressed)
            .bold()
            .underline(true, color: Color.red)
            .italic(true)
            .baselineOffset(5.0)
            .strikethrough(true, color: Color.green)
            .minimumScaleFactor(0.1)
            .frame(width: 200, height: 400, alignment: .leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
