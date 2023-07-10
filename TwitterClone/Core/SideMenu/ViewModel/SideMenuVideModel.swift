//
//  SideMenuVideModel.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-10.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case notificationscase
    case logout
    
    var description: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .notificationscase: return "Notifications"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .notificationscase: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
