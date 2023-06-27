//
//  ContentView.swift
//  TernaryBootcamp
//
//  Created by 张芳涛 on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!!!!!!" : "End State!!!!!!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
