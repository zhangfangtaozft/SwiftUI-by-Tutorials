//
//  RandomScreen.swift
//  ViewModelBootcamp
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
      ZStack(alignment: .center) {
          Color.green.ignoresSafeArea()
          VStack {
              ForEach(fruitViewModel.fruitArray) { fruit in
                  Text(fruit.name)
                      .foregroundColor(.white)
                      .font(.headline)
              }
          }
//          Button {
//              presentationMode.wrappedValue.dismiss()
//          } label: {
//              Text("GO BACK")
//                  .foregroundColor(.white)
//                  .font(.largeTitle)
//                  .fontWeight(.semibold)
//          }
      }
    }
}

