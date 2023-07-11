//
//  LoginView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-11.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                }
                Text("Hello")
                    .font(.largeTitle)
                Text("Welcome Back")
                    .font(.largeTitle)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
