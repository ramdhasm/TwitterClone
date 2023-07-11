//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-10.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Ramdhas M")
                        .font(.title)
                    Text("@ramdhas")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatView()
                    .padding(.vertical)
            }
            .padding(.leading)

            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { menu in
                if menu == .lists {
                    SideMenuOptionRowView(viewModel: .lists)
                } else if menu == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: .profile)
                            .foregroundColor(.black)
                    }
                } else {
                    SideMenuOptionRowView(viewModel: menu)
                }
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


