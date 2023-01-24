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
        let phoneNumbers = DataManager.shared.phoneNumber.shuffled()
        
        let maxIndex = min(names.count, surnames.count)
        
        enum Mails: String, CaseIterable {
            case mail = "@mail.ru"
            case icloud = "@icloud.ru"
            case gmail = "@gmail.com"
        }
        let emails = Mails.allCases
        
        for index in 0..<maxIndex {
            person.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phoneNumber: phoneNumbers[index],
                    email: "\(names[index]).\(surnames[index])\(emails.randomElement()?.rawValue ?? Mails.mail.rawValue)"
                )
            )
        }
        return person
    }
}
