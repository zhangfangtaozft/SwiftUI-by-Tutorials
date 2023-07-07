//
//  ContentView.swift
//  NavViewBootcamp
//
//  Created by 张芳涛 on 2023/7/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                CustomNavLink(
                    destination:
                        Text("Destination")
                        .customNavigationTitle("Second Screen")
                        .customNavigationSubtitle("Second Screen subtitle !!")
                ) {
                    Text("Navigate")
                }
            }
            .customNavBarItems(title: "New title!", subtitle: "New Subtitle!", backButtonHidden: true)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("navigate")
                }
                .navigationTitle("Nav title here")
            }
        }
    }
}
