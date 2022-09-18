//
//  Chat.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 03.09.2022.
//

import SwiftUI
    
struct Chat: View, Identifiable {
    let id: UUID
    
        
    private let name: String
    private let picture: String
    private let city: String
    private let message: String
    private let tripStatus: TripStatus
    private let startDate: Date
    private let endDate: Date
        
    init(name: String, picture: String, city: String, message: String, tripStatus: TripStatus, startDate: Date, endDate: Date) {
        self.id = UUID()
        self.name = name
        self.picture = picture
        self.city = city
        self.message = message
        self.tripStatus = tripStatus
        self.startDate = startDate
        self.endDate = endDate
    }
    
    enum TripStatus {
        case accepted
        case finished
        case declined
    }
    
    func convert(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd"
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        
        HStack {
            
            Image(picture)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
            
            VStack {
                
                HStack {
                    
                    Text(name)
                        
                    Text(city)
                        .foregroundColor(.gray)
                    
                } // HStack name and city
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 20, alignment: .leading)
                
                Text(message)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
    
                
                
                HStack {
                
                    switch tripStatus {
                    case .accepted:
                        Text("Request accepted")
                    case .finished:
                        Text("Trip completed")
                    case .declined:
                        Text("Request declined")
                    }
                                        
                    Text(convert(date: startDate))
                        .foregroundColor(.gray)
                    
                    Text(convert(date: endDate))
                
                } //HStack trip details
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 20, alignment: .leading)
                .foregroundColor(.gray)
                    
            } // VStack
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
            
            
        } // HStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
    } // body
        
} // struct chat

struct Chat_Previews: PreviewProvider {
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

