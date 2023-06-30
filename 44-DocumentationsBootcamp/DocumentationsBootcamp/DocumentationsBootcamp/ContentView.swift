//
//  ContentView.swift
//  DocumentationsBootcamp
//
//  Created by 张芳涛 on 2023/7/1.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERITES
    @State var data: [String] = [
        "Apples",
        "Ornages",
        "Bananas"
    ]
    @State var showAlert: Bool = false
    // MARK: BODY
    
    /*
     Working copy - thing to do:
     1) Fix title
     2) Fix alert
     */
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                // foreground
                foregroundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing: Button("ALERT", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        }// END: NAV
    }
    
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }// END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specifilied title
    ///
    ///This function creates and returns alert immediately, The alert will have a title based on the text paramater but it will NOT have a message.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in the alert.
    /// - Parameter text: This the title for the alert.
    /// - Returns: return an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
