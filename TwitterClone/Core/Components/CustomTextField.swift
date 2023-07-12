//
//  CustomTextField.swift
//  TwitterClone
//
//  Created by Ramdhas on 2023-07-13.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color(.gray))
        }
    }
}

struct CustomTextField_Preview: PreviewProvider {
    static var previews: some View {
        CustomTextField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
