//
//  Event.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import Foundation

struct Event: Identifiable {
    let id: UUID
    let nameRU: String
    let date: Date
    let image: String?
    let descriptionRU: String?
    let addressRU: String?
    let programRU: String?
    
    let membersCount: Int
    let copmaniesCount: Int
}
