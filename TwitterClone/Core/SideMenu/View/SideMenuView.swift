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
                HStack{
                    Image(systemName: menu.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(menu.description)
                        .font(.subheadline)
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
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
