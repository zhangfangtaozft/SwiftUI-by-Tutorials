//
//  ContentView.swift
//  TextEditorbootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    @State var textEditorText: String = "This is the starting text."
    @State var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
                    .background(.primary)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button {
                   savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
