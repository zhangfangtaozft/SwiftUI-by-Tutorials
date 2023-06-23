//
//  ContentView.swift
//  ButtonsBootcamp
//
//  Created by 张芳涛 on 2023/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var title = "This is my title"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button was pressed!"
            }
            Button {
                self.title = "Button #2 was pressed!"
            } label: {
                Text("Button".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                    )
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
            
            Button {
                self.title = "#4 Finish clicked!".uppercased()
            } label: {
                Text("Finish".uppercased())
                    .font(.callout)
                    .bold()
                    .foregroundColor(.purple)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(.green, lineWidth: 2.0)
                    )
            }


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
