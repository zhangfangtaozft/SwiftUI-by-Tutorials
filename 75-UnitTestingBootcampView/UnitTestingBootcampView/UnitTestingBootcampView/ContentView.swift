//
//  ContentView.swift
//  UnitTestingBootcampView
//
//  Created by 张芳涛 on 2023/7/11.
//

/*
 1. Unit Tests
 - test the business logic in your app
 
 2. UI Tests
 -tests the UI of your app
 
 */
import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: UnitTestingBootcampViewModel
    init(isPremium: Bool) {
        _vm = StateObject(wrappedValue: UnitTestingBootcampViewModel(isPremium: true))
    }
    
    var body: some View {
        Text(vm.isPremium.description)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isPremium: true)
    }
}
