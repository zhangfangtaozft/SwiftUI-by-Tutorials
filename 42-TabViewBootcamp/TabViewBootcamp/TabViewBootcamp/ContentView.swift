//
//  ContentView.swift
//  TabViewBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var seletedTab: Int = 0
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    var body: some View {
        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.yellow)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300
            )
        )
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView(selection: $seletedTab) {
//            HomeView(selectTab: $seletedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @Binding var selectTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
