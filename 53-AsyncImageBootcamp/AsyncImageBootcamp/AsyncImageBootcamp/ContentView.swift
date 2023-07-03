//
//  ContentView.swift
//  AsyncImageBootcamp
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI

struct ContentView: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
//        AsyncImage(url: url, content: { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
