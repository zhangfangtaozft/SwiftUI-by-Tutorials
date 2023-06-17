//
//  ContentView.swift
//  Color
//
//  Created by 张芳涛 on 2023/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(Color.primary)
            .fill(
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red.opacity(0.7), radius: 10,x:20, y: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
