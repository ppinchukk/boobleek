//
//  ChatsView.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 03.09.2022.
//

import SwiftUI

struct ChatsView: View {
    
    
    let arrayOfChats: [Chat]
    init(arrayOfChats: [Chat]) {
        self.arrayOfChats = arrayOfChats
    }
    
    var body: some View {
        List(arrayOfChats) { chat in
                chat
        }
        .listStyle(.plain)
    }
}


struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView(arrayOfChats: [
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
            getChatsView(),
        ])
    }
}

