//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-03.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 10) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Ramdhas")
                            .font(.subheadline).bold()
                        Text("@ramdhas")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text("10m")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Text("My First Tweet")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
