//
//  ContentView.swift
//  TransitionBootcamp
//
//  Created by 张芳涛 on 2023/6/28.
//

import SwiftUI

struct ContentView: View {
    @State var showView = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .animation(.easeInOut)
                    .transition(
                        .asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut))
                    )
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
