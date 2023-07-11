//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-04.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedItem: TweetFilter = .tweets
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack (alignment: .leading){
            headerView
            
            actionButtons()
            
            UserDetail()
            
            UserStatView()
                .padding()
            
            FilterMenu(selectedItem: $selectedItem)
                .overlay(Divider().offset(x:0, y: 16))
            
            TweetsView()
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .leading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack{
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 16)
                        .offset(x: 20)
                }
                
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 72, height: 72)
                    .offset(x: 20, y: 28)
            }
        }
        .frame(height: 98)
    }
}

struct actionButtons: View {
    var body: some View {
        HStack(spacing: 12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(3)
                .overlay(Circle().stroke(.gray, lineWidth: 0.75))
            
            Button {
                print("Edit")
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 28)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 0.75))
            }
        }
        .padding(.horizontal)
    }
}

struct UserDetail: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    Text("Ramdhas")
                        .font(.title2).bold()
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Text("@ramdhas")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Make it simple")
                    .font(.subheadline)
                    .padding(.vertical, 4)
                
                HStack{
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                        Text("Gothenburg, Sweden")
                    }
                    
                    HStack{
                        Image(systemName: "link")
                        Text("https://ramdhasm.github.io/")
                    }
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
            .padding(.horizontal)
        }
    }
}

struct FilterMenu: View {
    @Binding var selectedItem: TweetFilter
    
    var body: some View {
        HStack{
            ForEach(TweetFilter.allCases, id: \.rawValue) { item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedItem == item ? .semibold : .regular)
                        .foregroundColor(selectedItem == item ? .black : .gray)
                    
                    if selectedItem == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedItem = item
                    }
                }
                
            }
        }
    }
}

struct TweetsView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 10, id: \.self) {_ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

