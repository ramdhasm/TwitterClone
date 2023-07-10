//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-05.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 15){
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(.blue)
            VStack{
                Text("Ramdhas")
                    .font(.subheadline).bold()
                Text("@ramdhas")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 5)

    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
