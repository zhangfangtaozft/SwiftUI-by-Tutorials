//
//  ContentView.swift
//  SheetsBootcamp
//
//  Created by 张芳涛 on 2023/6/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            
            //            .sheet(isPresented: $showSheet) {
            //                SecondScreen()
            //            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
    
    struct SecondScreen: View {
        @Environment(\.presentationMode) var pressentationMode
        var body: some View {
            ZStack(alignment: .topLeading) {
                Color.red
                    .edgesIgnoringSafeArea(.all)
                
                Button {
                    pressentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
