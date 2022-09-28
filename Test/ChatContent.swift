//
//  ChatContent.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 20.09.2022.
//

import SwiftUI


struct ChatContent: View, Identifiable {
    let id: UUID
    

    private let picture: String
    private let name: String
    private let time: String
    private let message: String
    
    init(picture: String, name: String, time: String, message: String) {
        self.id = UUID()
        self.picture = picture
        self.name = name
        self.time = time
        self.message = message
    }
    
    var body: some View {
        HStack(alignment: .top) {
            Image(picture)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            VStack {
                HStack {
                    Text(name)
                        .font(.system(
                                size: 15, weight: .heavy
                                )
                        )
                    Text(time)
                    .font(.system(
                            size: 15, weight: .thin
                            )
                    )
                    
                }//HStack
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 20, alignment: .leading)
                Text(message)
                    .font(.system(
                        size: 17, weight: .regular
                            )
                    )
            }//VStack
        } //main HStack
        .flippedUpsideDown()
        
        
    } //body
    
} //ChatContent

struct ChatContent_Previews: PreviewProvider {
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
