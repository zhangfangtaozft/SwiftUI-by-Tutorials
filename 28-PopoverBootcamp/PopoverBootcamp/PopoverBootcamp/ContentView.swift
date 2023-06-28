//
//  ContentView.swift
//  PopoverBootcamp
//
//  Created by 张芳涛 on 2023/6/28.
//

import SwiftUI

struct ContentView: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//            }
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height - 100)
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
