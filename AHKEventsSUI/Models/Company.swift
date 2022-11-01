//
//  Company.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import Foundation

enum CompanyType {
    case sponsor
    case partner
}

struct Company: Identifiable {
    let id: UUID
    let type: CompanyType
    let legalNameRU: String?
    let pRNameRU: String?
    let descriptionRU: String?
    let website: String?
    let logo: String?
    
    let eventID: [UUID]?
}
