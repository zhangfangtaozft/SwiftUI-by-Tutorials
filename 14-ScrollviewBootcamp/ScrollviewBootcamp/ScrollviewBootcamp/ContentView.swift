//
//  ContentView.swift
//  ScrollviewBootcamp
//
//  Created by 张芳涛 on 2023/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
        
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300)
//
//                }
//            }
//        }
//        ScrollView {
//            VStack {
//                ForEach(0..<10) { index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(Color.white)
//                        .frame(width: 200, height: 150)
//                        .shadow(radius: 10.0)
//                        .padding()
//                }
//            }
//        }
        ScrollView {
            LazyVStack {
                ForEach(0..<200) { row in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<100) { col in
                                VStack {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10.0)
                                        .padding()
                                        .overlay {
                                            Text("\(row) : \(col)")
                                        }
                                }
                                
                            }
                        }
                    }
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
