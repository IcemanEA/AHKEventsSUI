//
//  Member.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import Foundation

struct Member: Identifiable {
    let id: UUID
    let email: String
    let nameRU: String?
    let surnameRU: String?
    let companyRU: String?
    let positionRU: String?
    let phone: String?
    let photo: String?
    let language: String?
    
    let showContacts: Bool?
    let allowInvitations: Bool?
    let allowNotifications: Bool?
    
    let companyID: UUID?
    let eventID: [UUID]?
    
    var name: String {
        let name = nameRU ?? ""
        let surname = surnameRU ?? ""
        return "\(name) \(surname)"
    }
}
