//
//  Utils.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 11.09.2022.
//

import Foundation



func getChatsView() -> Chat {
    var components = DateComponents()
    components.year = 2022
    components.month = 06
    components.day = 21
    let startDate = Calendar.current.date(from: components)
    components.year = 2022
    components.month = 07
    components.day = 22
    let endDate = Calendar.current.date(from: components)
    return Chat(
        name: "Alli",
        picture: "skvidvard",
        city: "Kyiv",
        message: "Airbnb update: Reminder - Leave a review",
        tripStatus: .finished,
        startDate: startDate!,
        endDate: endDate!
    )
}
