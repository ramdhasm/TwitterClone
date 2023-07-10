//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-04.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText = ""
    var body: some View {
        NavigationView {
            VStack {
                ScrollView{
                    LazyVStack{
                        ForEach(0 ... 10, id: \.self) {_ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                        }
                        .searchable(text: $searchText)
                    }
                }
            }
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
