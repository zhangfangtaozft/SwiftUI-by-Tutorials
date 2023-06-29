//
//  ContentView.swift
//  ToggleBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleIsOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
