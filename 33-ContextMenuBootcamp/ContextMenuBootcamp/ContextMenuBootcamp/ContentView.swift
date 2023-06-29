//
//  ContentView.swift
//  ContextMenuBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI thinking")
                .font(.headline)
            Text("How to use context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30.0))
        .contextMenu {
//            Text("Menu Item 1")
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

//            Text("Menu Item 1")
//            Text("Menu Item 1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
