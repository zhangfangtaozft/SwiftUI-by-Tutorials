//
//  ContentView.swift
//  BadgeBootcamp
//
//  Created by 张芳涛 on 2023/7/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello world1")
                .badge(5)
            Text("Hello world2")
            Text("Hello world3")
            Text("Hello world4")
            
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
