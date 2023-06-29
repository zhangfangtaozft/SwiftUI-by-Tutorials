//
//  ContentView.swift
//  ActionsheetBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    @State var showActionSeet = false
    @State var actionSheetoption: ActionSheetOptions = .isOtherPost
    enum ActionSheetOptions {
        case ismyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetoption = .ismyPost
                    showActionSeet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }

//        Button("Click me") {
//            showActionSeet.toggle()
//        }
        .actionSheet(isPresented: $showActionSeet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
        
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetoption {
        case .ismyPost:
            return ActionSheet(
            title: title,
            message: Text("ismyPost"),
            buttons: [
                shareButton,
                reportButton,
                deleteButton,
                cancelButton
            ])
            
        case .isOtherPost:
            return ActionSheet(
            title: title,
            message: Text("isOtherPost"),
            buttons: [
                shareButton,
                reportButton,
                cancelButton
            ])
            
        }
//        let button1 = ActionSheet.Button.default(Text("Default"))
//        let button2 = ActionSheet.Button.destructive(Text("Destructive"))
//        let button3 = ActionSheet.Button.cancel()
//
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message."),
//            buttons: [
//                button1,
//                button2,
//                button3
//            ]
//        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
