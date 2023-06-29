//
//  ContentView.swift
//  TextFieldBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldText = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here......", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    saveText()
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(textIsAppropriate() ? false : true)
                ForEach(dataArray, id: \.self) { str in
                    Text(str)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        
        if textIsAppropriate() {
            dataArray.append(textFieldText)
        } else {
            textFieldText = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
