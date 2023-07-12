//
//  UITestingBootcampViewApp.swift
//  UITestingBootcampView
//
//  Created by 张芳涛 on 2023/7/12.
//

import SwiftUI

@main
struct UITestingBootcampViewApp: App {
    let currentUserIsSignedIn: Bool
    
    init() {
//        let userIsSignedIn: Bool = CommandLine.arguments.contains("-UITest_startSignedIn") ? true : false
        let userIsSignedIn: Bool = ProcessInfo.processInfo.arguments.contains("-UITest_startSignedIn") ? true : false
        //environment
//        let value = ProcessInfo.processInfo.environment["UITest_startSignedIn2"]
//        let userIsSignedIn: Bool = value == "true" ? true : false
        self.currentUserIsSignedIn = userIsSignedIn
       
    }
    var body: some Scene {
        WindowGroup {
            ContentView(currentUserIsSignedIn: currentUserIsSignedIn)
        }
    }
}
