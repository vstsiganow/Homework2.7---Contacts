//
//  DataManager.swift
//  Contacts
//
//  Created by vtsyganov on 12.06.2021.
//

import UIKit

class DataManager: ObservableObject {
    
    let firstNames = ["Ulysses", "Joseph", "Cameron", "William", "Diane", "Megan", "Cindy", "Darron", "Arnette", "Marine", "Reed"]
    let secondNames = ["Wilson", "Williams", "Boolman", "Austin", "Donovan", "Hardman", "Mcfatridge", "Mowery", "Ricard", "Nesler", "Paquet"]
    let phones = ["402-241-8459", "907-449-5143", "630-771-8807", "702-724-9102", "863-210-8056", "570-820-1583", "202-555-0199", "202-555-0161", "202-555-0173", "202-555-0121"]
    let emails = ["lost@outlook.com", "hr6zdl@gmail.com", "kaft93x@outlook.com", "dcu@mail.com", "19dn@outlook.com", "pa5h@gmail.com", "tthompson@wiegand.com", "jerad74@nienow.com", "clinton36@gmail.com", "dubuque.hulda@marks.com"]
    
    var persons: [Person] = []
    
    init() {
        fillPersonsList()
        printItems()
    }
    
    func printItems() {
        for person in persons {
            print("\(person.fullName) \(person.phone) \(person.email)")
        }
    }
}

extension DataManager {
    private func fillPersonsList() {
        while persons.count < 10 {
            createPerson()
        }
    }
    
    private func createPerson() {
        let randomFirstName = firstNames.randomElement()!
        let randomSecondName = secondNames.randomElement()!
        let randomPhone = phones.randomElement()!
        let randomEmail = emails.randomElement()!
        
        let newPerson = Person(firstName: randomFirstName, secondName: randomSecondName, phone: randomPhone, email: randomEmail)
        
        if !persons.isEmpty {
            for person in persons {
                if randomFirstName == person.firstName || randomSecondName == person.secondName || randomPhone == person.phone || randomEmail == person.email {
                    return
                }
            }
            persons.append(newPerson)
        } else {
            persons.append(newPerson)
        }
    }
}
