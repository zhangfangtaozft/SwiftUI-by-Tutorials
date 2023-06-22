//
//  ContentView.swift
//  GridBootcamp
//
//  Created by 张芳涛 on 2023/6/23.
//

import SwiftUI

struct ContentView: View {
//    let columns = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//
//    ]
//    let columns = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
//    let columns = [
//        GridItem(.adaptive(minimum: 5, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 20, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
//    ]
    let columns = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
//    var body: some View {
//        ScrollView {
//            Rectangle()
//                .fill(Color.white)
//                .frame(height: 400)
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
//        }
//    }
//    var body: some View {
//        ScrollView {
//            LazyVGrid(
//                columns: columns, alignment: .center, spacing: 6, pinnedViews: []) {
//                    ForEach(0..<50) { index in
//                        Rectangle().frame(height: 150)
//                    }
//                }
//        }
//    }
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section(
                        header:
                            Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.blue)
                        .padding()
                        ,
                        footer:
                            Text("Section1 end")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.blue)
                        .padding()
                    
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(
                        header:
                            Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.blue)
                        .padding()
                        ,
                        footer:
                            Text("Section2 end")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.blue)
                        .padding()
                    
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(.blue)
                                .frame(height: 150)
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
