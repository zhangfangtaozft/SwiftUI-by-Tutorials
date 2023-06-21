//
//  ContentView.swift
//  PaddingAndApacerBootcamp
//
//  Created by 张芳涛 on 2023/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
    //            .background(Color.yellow)
    //            .padding(.all,15)
    //            .padding(.leading, 20)
    //            .background(Color.blue)
            
    //            .font(.largeTitle)
    //            .fontWeight(.semibold)
    //            .frame(maxWidth: .infinity, alignment: .leading)
    //            .background(Color.red)
    //            .padding(.leading, 20)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("This is the description of what we will do on this screen. it is multiple lines and we will align the next to the leading egde.")
        }
//        .background(Color.blue)
//        .padding()
//        .background(Color.red)
//        .padding(.horizontal, 12)
//        .background(Color.green)
        
        
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .contrast(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10
                )
                .padding(.horizontal, 10)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
