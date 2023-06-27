//
//  ContentView.swift
//  BindingBootcamp
//
//  Created by 张芳涛 on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
    
    struct ButtonView: View {
        
        @Binding var backgroundColor: Color
        @Binding var title: String
        @State var buttonColor: Color = Color.blue
        var body: some View {
            Button {
                backgroundColor = .orange
                title = "New Title!!!!!!"
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
