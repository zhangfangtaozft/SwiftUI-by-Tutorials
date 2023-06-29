//
//  ContentView.swift
//  AlertBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    @State var alertType: myAlerts? = nil
//    @State var alertTitle = ""
//    @State var alertMessage = ""
    @State var backgroundColor = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "This video could not bve uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video🙃🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
    //            Alert(title: Text("There was an error!"))
//                Alert(
//                    title: Text("This is title!"),
//                    message: Text("Here we will describe the error"),
//                    primaryButton: .destructive(Text("Delete"), action: {
//                        backgroundColor = .red
//                    }),
//                    secondaryButton: .cancel())
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("There was an error!")
            )
        case .success:
            return Alert(
                title: Text("This was a success!"),
                message: nil,
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .green
                })
            )
        default:
            return Alert(title: Text("ERROR"))
    
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
