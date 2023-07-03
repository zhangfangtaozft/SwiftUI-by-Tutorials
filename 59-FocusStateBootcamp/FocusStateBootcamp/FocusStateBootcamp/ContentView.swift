//
//  ContentView.swift
//  FocusStateBootcamp
//
//  Created by 张芳涛 on 2023/7/4.
//

import SwiftUI

struct ContentView: View {
    enum OnBoardingFields: Hashable {
        case username
        case password
    }
    
    
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnBoardingFields?
    
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username )
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
//            Button("TOGGLE FOCUS STATE") {
//                fieldInFocus.toggle()
//            }
            
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                fieldInFocus = .username
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
