//
//  ContentView.swift
//  Images
//
//  Created by 张芳涛 on 2023/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("image")
//            .renderingMode(.template)
            .resizable()
            .scaledToFill()
            .frame(width: 400, height: 400)
//            .foregroundColor(Color.red)
            .clipShape(Circle())
            .opacity(0.8)
            .overlay(
            Text("Name")
                .font(.system(size: 24))
                .foregroundColor(Color.white)
            
            )
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
