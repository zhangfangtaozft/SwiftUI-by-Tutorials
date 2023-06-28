//
//  ContentView.swift
//  NavigationViewBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World!!!", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("NavigationView")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(false)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: HStack {
                    NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                    .accentColor(.red)
                    NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                    .accentColor(.red)
                    NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                    .accentColor(.red)
                    NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                    .accentColor(.red)
                    NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                    .accentColor(.red)
                }
            )
        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
            
            NavigationLink("ClickHere", destination: ThirdScreen())
        }
    }
}

struct ThirdScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.cyan.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Back to the root vc") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
