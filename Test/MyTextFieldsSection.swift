//
//  MyTextFieldsSection.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 02.09.2022.
//

import SwiftUI

struct MyTextFieldsSection: View {
    
    @State var firstname: String = "Andrew"
    @State var lastname: String = "Prokhorenko"
    @State var gender: String = "Male"
    
    var body: some View {
        
        MyTextField(
            hint: "Enter your first name",
            title: "First name",
            text: $firstname,
            showImage: false
        )
        
        MyTextField(
            hint: "Enter your last name",
            title: "Last name",
            text: $lastname,
            showImage: false
        )
        
        MyTextField(
            hint: "Enter your gender",
            title: "Gender",
            text: $gender,
            showImage: true
        )
    }
}
