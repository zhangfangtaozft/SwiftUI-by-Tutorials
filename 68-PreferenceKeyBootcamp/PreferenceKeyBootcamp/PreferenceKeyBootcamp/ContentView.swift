//
//  ContentView.swift
//  PreferenceKeyBootcamp
//
//  Created by 张芳涛 on 2023/7/6.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = "Hwllo World!"
    
    var body: some View {
        NavigationView {
            VStack {
//                Text(text)
                SecondScreen(text: text)
                    .navigationTitle("Navigation Title")
//                    .customTitle(text: "Custom title new value!")
//                    .preference(key: CustomTitlePerferenceKey.self, value: "NEW VALUE!!!!")
            }
//            .navigationTitle("navigation Title")
        }
        .onPreferenceChange(CustomTitlePerferenceKey.self, perform: { value in
            self.text = value
        })
    }
}


extension View {
    func customTitle(text: String) -> some View {
        preference(key: CustomTitlePerferenceKey.self, value: text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SecondScreen: View {
    let text: String
    @State private var newValue: String = ""
    var body: some View {
        Text(text)
            .onAppear(perform: getDataFromDataBase)
            .customTitle(text: newValue)
    }
    
    func getDataFromDataBase() {
        // download
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.newValue = "NEW VALUE FROM DATABASE"
        }
    }
}

struct CustomTitlePerferenceKey: PreferenceKey {
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
    
    static var defaultValue: String = ""
}
