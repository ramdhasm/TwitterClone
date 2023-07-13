//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-11.
//

import SwiftUI

struct RegistrationView: View {
    @State private var emailID = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            AuthenticationHeaderView(title: "Hello", subTitle: "Welcome Back")
            VStack(spacing: 40){
                CustomTextField(imageName: "envelope", placeholderText: "Email", text: $emailID)
                CustomTextField(imageName: "person", placeholderText: "Password", text: $password)
                CustomTextField(imageName: "person", placeholderText: "fullname", text: $fullname)
                CustomTextField(imageName: "lock", placeholderText: "password", text: $password)
            }
            .padding(32)
            
            Button {
                print("Signup")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()

            Button {
                dismiss()
            } label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("SignIn")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
