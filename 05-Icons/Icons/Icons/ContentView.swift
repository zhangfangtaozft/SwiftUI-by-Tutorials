//
//  ContentView.swift
//  Icons
//
//  Created by 张芳涛 on 2023/6/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .font(.caption)
//            .font(.system(size: 200))
            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
