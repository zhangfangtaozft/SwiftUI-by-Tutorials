//
//  ContentView.swift
//  ColorPickerBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker("Select a Color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
                .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
