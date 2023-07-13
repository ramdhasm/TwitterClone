//
//  LoginView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-11.
//

import SwiftUI

struct LoginView: View {
    @State private var emailID = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            AuthenticationHeaderView(title: "Hello", subTitle: "Welcome Back")
            
            VStack(spacing: 40){
                CustomTextField(imageName: "envelope", placeholderText: "Email", text: $emailID)
                CustomTextField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            
            HStack() {
                Spacer()
                Button {
                    print("Forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button {
                print("Signin")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack{
                    Text("Don't have an account?")
                        .font(.footnote)
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
