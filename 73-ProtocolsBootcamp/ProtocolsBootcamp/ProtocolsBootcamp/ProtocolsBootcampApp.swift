//
//  ProtocolsBootcampApp.swift
//  ProtocolsBootcamp
//
//  Created by 张芳涛 on 2023/7/10.
//

import SwiftUI

@main
struct ProtocolsBootcampApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(colorTheme: DefaultColorTheme(), dataSource: DefaultDataSource())
        }
    }
}
