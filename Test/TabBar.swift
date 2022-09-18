//
//  TabBar.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 12.09.2022.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        
        TabView {
            ProfileView()
                .tabItem {
                    Image("account_symbol")
                    Text("Profile")
                }
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
                        getChatsView()
            ])
                .tabItem{
                    Image("chat_symbol")
                    Text("Chats")
                }
        }
        
        
    }
    
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
