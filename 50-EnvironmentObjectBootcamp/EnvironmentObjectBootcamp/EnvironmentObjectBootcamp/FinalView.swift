//
//  FinalView.swift
//  EnvironmentObjectBootcamp
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI

struct FinalView: View {
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white,.blue, .purple, .red]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack {
//                    Text("Item 1")
//                    Text("Item 2")
//                    Text("Item 3")
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

