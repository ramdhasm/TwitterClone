//
//  SideMenuOptionRowView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-11.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    var viewModel: SideMenuViewModel
    var body: some View {
        HStack{
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(viewModel.description)
                .font(.subheadline)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
