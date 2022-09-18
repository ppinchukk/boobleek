//
//  MyTextField.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 31.08.2022.
//

import SwiftUI

struct MyTextField: View {
    
    private let text: Binding<String>
    private let title: String
    private let hint: String
    private let showImage: Bool
    
    init(hint: String, title: String, text: Binding<String>, showImage: Bool) {
        self.hint = hint
        self.title = title
        self.text = text
        self.showImage = showImage
        
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    
                    Text(title)
                        .foregroundColor(.gray)
                        .padding([.leading, .top], 10)
    
                    TextField(hint, text: text)
                        .foregroundColor(.black)
                        .padding([.leading, .bottom], 10)
                } //VStack for text
                
                if showImage {
                    Image("expand_more-expand_more_symbol")
                      .renderingMode(.template)
                      .resizable()
                      .scaledToFit()
                      .frame(width: 15, height: 15)
                      .padding()
                      .foregroundColor(.black)
                      .opacity(0.8)
                }
              
            } //HStack
        } //VStack gender
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 70
        )
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(.gray, lineWidth: 1)
        )
    }
}

struct MyTextField_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

