//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-11.
//

import SwiftUI

struct NewTweetView: View {
    @Environment (\.dismiss) var dismiss
    @State private var text = ""
    var body: some View {
        VStack{
            HStack{
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack{
                Circle()
                    .frame(width: 50, height: 50)
                TextField("What's happening?", text: $text, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
