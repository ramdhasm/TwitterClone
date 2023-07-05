//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-05.
//

import Foundation

enum TweetFilter: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets : return "Tweets"
        case .replies : return "Replies"
        case .likes : return "Likes"
        }
    }
}

