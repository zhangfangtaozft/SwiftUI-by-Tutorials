 //
//  ContentView.swift
//  IfLetGuardBootcamp
//
//  Created by 张芳涛 on 2023/7/1.
//

import SwiftUI

struct ContentView: View {
    @State var currentUserID: String? = "testUser1234"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                } else {
                    
                }
                // DO NOT USER ! EVER
                // DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
//                loadData()
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error, There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error, there is no User ID!"
            return
        }
        isLoading = true
        displayText = "This is the new data! User id is: \(userID)"
        isLoading = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
