//
//  AuthenticationHeaderView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-13.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    var title: String
    var subTitle: String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
            }
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subTitle)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: .bottomRight))
    }
}

struct AuthenticationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeaderView(title: "Hello", subTitle: "Welcome Back")
    }
}
