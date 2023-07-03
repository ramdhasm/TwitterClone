//
//  FeedView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-03.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0 ..< 20) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
