//
//  Contacts.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
}

extension Person {
    static func getContacts() -> [Person] {
        var person: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumber
        let emails = DataManager.shared.email.shuffled()
        
        let maxIndex = min(names.count, surnames.count)
        
        for index in 0...maxIndex {
            person.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phoneNumber: phoneNumbers,
                    email: emails[index]
                )
            )
        }
        return person
    }
}
