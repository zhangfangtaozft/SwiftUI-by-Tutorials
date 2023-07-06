//
//  TabBarItemsPreferenceKey.swift
//  TabViewBootcamp
//
//  Created by 张芳涛 on 2023/7/7.
//

import Foundation
import SwiftUI

struct TabbarItemsPreferenceKey: PreferenceKey {
    static var defaultValue: [TabBarItem] = []
    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
}


struct TabBaritemViewModifer: ViewModifier {
    let tab: TabBarItem
    @Binding var selection: TabBarItem
    
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1.0 : 0.0)
            .preference(key: TabbarItemsPreferenceKey.self, value: [tab])
    }
}

extension View {
    func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
        modifier(TabBaritemViewModifer(tab: tab, selection: selection))
    }
}
