//
//  ContentView.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 27.08.2022.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack (alignment: .center) {
                    
                    MyTextFieldsSection()
                
                    MyDivider()
                
                    MyInfoViewsSection()
                
                    Spacer()
                
                    MyDivider()
                        
                    MyMainButton()
                    
                    
                }//main VStack
                .padding()
                .frame(
                    width: geometry.size.width,
                    height: geometry.size.height
                )
            } //ScrollView
        }
        
    } //body
} //ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
