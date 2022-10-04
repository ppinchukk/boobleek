//
//  ChatContentView.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 20.09.2022.
//

import SwiftUI

struct ChatContentView: View {
   
    @State private var message: String = ""
    let arrayOfMessages: [ChatContent]
    init(arrayOfMessages: [ChatContent]) {
        self.arrayOfMessages = arrayOfMessages
    }
    
    var body: some View {
        VStack {
            List(arrayOfMessages) { message in
                message
            }
                .flippedUpsideDown()
                .listStyle(.plain)
            HStack {
                Image("gallery")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .opacity(0.6)
                TextField("Write a message", text: $message)
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: 40
                    )
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.gray, lineWidth: 1)
                    )
                Image("send")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .opacity(0.6)
                    
            }
        } //body
        .padding(10)
    }
}

struct ChatContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChatContentView(arrayOfMessages: [
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView(),
          getChatContentView()
        ])
    }
}
