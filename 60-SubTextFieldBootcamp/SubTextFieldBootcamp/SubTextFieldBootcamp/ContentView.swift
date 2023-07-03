//
//  ContentView.swift
//  SubTextFieldBootcamp
//
//  Created by 张芳涛 on 2023/7/4.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("something to the console!")
                }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("something to the console!")
                }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("something to the console!")
                }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.send)
                .onSubmit {
                    print("something to the console!")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
