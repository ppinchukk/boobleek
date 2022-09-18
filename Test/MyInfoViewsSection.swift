//
//  MyInfoViewsSection.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 02.09.2022.
//

import SwiftUI

struct MyInfoViewsSection: View {
    var body: some View {
        
        MyInfoView(
            title: "Email",
            subtitle: "p***w.gmail.com",
            buttonTitle: ""
        ) {}
        
        MyDivider()
        
        MyInfoView(
            title: "Phone number",
            subtitle: "+380 *** *** 97 09",
            buttonTitle: "Edit"
        ) {
            print("Button 'Edit' tapped")
        }
        
        MyDivider()
        
        MyInfoView(
            title: "Government ID",
            subtitle: "Provided",
            buttonTitle: "Remove"
        ) {
            print("Button 'Remove' tapped")
        }
        
        MyDivider()
            
        MyInfoView(
            title: "Emergency contact",
            subtitle: "",
            buttonTitle: "Add"
        ) {
            print("Button 'Add' tapped")
        }
        
    }
}

