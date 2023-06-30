//
//  ContentView.swift
//  SliderBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    var body: some View {
//        VStack {
//            Text("Rating:")
////            Text("\(sliderValue)")
//            Text(String(format: "%.2f", sliderValue))
//            Slider(value: $sliderValue, in: 20...89,step: 0.000001)
//                .accentColor(.red)
//        }
        VStack {
            Text("Rating:")
            Text(String(format: "%.1f", sliderValue))
                .foregroundColor(color)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged:  {_ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
