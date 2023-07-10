//
//  UserStatView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-10.
//

import SwiftUI

struct UserStatView: View {
    var body: some View {
        HStack{
            HStack(spacing: 5){
                Text("14")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 5){
                Text("89")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView()
    }
}
