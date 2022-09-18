//
//  MyMainButton.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 02.09.2022.
//

import SwiftUI

struct MyMainButton: View {
    var body: some View {
        
        Button(action: {
            print("Button 'Save' tapped!")
        }) {
            Text("Save")
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: 50
                )
                .font(.system(size: 18))
                .foregroundColor(.white)
                .background(Color.gray)
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 10
                    )
                    .stroke(
                        Color.gray,
                        lineWidth: 2
                    )
                )
        }
        .cornerRadius(10)
        
    }
}

struct MyMainButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
