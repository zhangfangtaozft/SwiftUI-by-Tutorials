//
//  ContentView.swift
//  TextSelectionBootcamp
//
//  Created by 张芳涛 on 2023/7/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .textSelection(.enabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
