//
//  ContentView.swift
//  TapGestureBootcamp
//
//  Created by 张芳涛 on 2023/7/1.
//

import SwiftUI

struct ContentView: View {
   
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            }
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

            Spacer()
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
