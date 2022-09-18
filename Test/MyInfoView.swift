//
//  MyInfoView.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 01.09.2022.
//

import SwiftUI

struct MyInfoView: View {
    private let title: String
    private let subtitle: String
    private let buttonTitle: String
    private let buttonAction: () -> Void
    
    init(title: String, subtitle: String, buttonTitle: String, buttonAction: @escaping () -> Void) {
        self.title = title
        self.subtitle = subtitle
        self.buttonTitle = buttonTitle
        self.buttonAction = buttonAction
    }
    
    var body: some View {
        
        VStack (alignment:.leading)
        {
            
            HStack
            {
            
                Text(title)
                .padding([.leading], 3)
                .padding([.top], 15)
                
                Spacer()
                
                if buttonTitle != "" {
                    Button(action: buttonAction
                    ) {
                        Text(buttonTitle).underline()
                        }
                    .foregroundColor(.black)
                    .padding([.trailing], 3)
                    .padding([.top], 15)
                }
                
            } //HStack
            
            
            Text(subtitle)
                .foregroundColor(.gray)
                .padding([.leading], 3)
                .padding([.bottom], 15)
        
        } //VStack
        .frame(
            minWidth: 0,
            maxWidth: .infinity
        )
    } //body
    
}

struct MyInfo: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
