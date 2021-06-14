//
//  Person.swift
//  Contacts
//
//  Created by vtsyganov on 12.06.2021.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}
