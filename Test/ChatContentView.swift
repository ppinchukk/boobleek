//
//  ChatContentView.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 20.09.2022.
//

import SwiftUI

struct ChatContentView: View {
    
    let arrayOfMessages: [ChatContent]
    init(arrayOfMessages: [ChatContent]) {
        self.arrayOfMessages = arrayOfMessages
    }
    
    var body: some View {
        List(arrayOfMessages) { message in
            message
        }
        .flippedUpsideDown()
        .listStyle(.plain)
    }
}
