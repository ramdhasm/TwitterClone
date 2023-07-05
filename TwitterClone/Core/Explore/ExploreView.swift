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
        VStack {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id: \.self) {_ in
                        UserRowView()
                            .padding()
                    }
                    .searchable(text: $searchText)

                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
