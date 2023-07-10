//
//  DependencyInjectionBootcampApp.swift
//  DependencyInjectionBootcamp
//
//  Created by 张芳涛 on 2023/7/10.
//

import SwiftUI

@main
struct DependencyInjectionBootcampApp: App {
    var body: some Scene {
//        let dataService = ProductionDataService(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
        let dataService = MockDataService(data: nil)
        WindowGroup {
            ContentView(dataService: dataService)
        }
    }
}
