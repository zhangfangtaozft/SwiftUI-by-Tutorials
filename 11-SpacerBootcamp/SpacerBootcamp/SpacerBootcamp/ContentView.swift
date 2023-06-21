//
//  ContentView.swift
//  SpacerBootcamp
//
//  Created by 张芳涛 on 2023/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
//        .padding(.horizontal, 200)
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
