//
//  ContentView.swift
//  BackgroundMaterialBootcamp
//
//  Created by 张芳涛 on 2023/7/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
//            .background(Color.black.opacity(0.5))
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(Image("bg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
