//
//  TabBarItem.swift
//  TabViewBootcamp
//
//  Created by 张芳涛 on 2023/7/7.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home
    case favorite
    case profile
    case messages
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .favorite: return "heart"
        case .profile: return "person"
        case .messages: return "message"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorite: return "Favorites"
        case .profile: return "Profile"
        case .messages: return "Messages"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return .red
        case .favorite: return .blue
        case .profile: return .green
        case .messages: return .orange
        }
    }
    
}
