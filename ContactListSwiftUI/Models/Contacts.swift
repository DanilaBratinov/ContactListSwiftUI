//
//  Contacts.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import Foundation

struct Contacts: Identifiable {
    var id = UUID()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func randomName() -> String {
        let names = ["Carl", "Ted", "Steven", "John", "Tim", "Bruce", "Sharon", "Aaron", "Allan", "Nikola"]
        
        guard let name = names.randomElement() else { return ""}
        
        return name
    }
    
    static func randomSurname() -> String {
        let surnames = ["Robertson", "Butler", "Pennyworth", "Smith", "Murphy", "Black", "Dow", "Williams", "Jankin", "Isaacson"]
        
        guard let surname = surnames.randomElement() else { return "" }
        
        return surname
    }
    
    static func randomPhoneNumber() -> String {
        let phoneNumber = Int.random(in: 0...10)
        
        return "+7\(phoneNumber)"
    }
    
    static func randomEmail() -> String {
        enum Mail: String, CaseIterable {
            case mail = "@mail.ru"
            case icloud = "@icloud.com"
            case gmail = "@gmail.com"
        }
        
        let mails = Mail.allCases
        
        let email = "\(randomName())\(mails.randomElement()?.rawValue ?? "")"
        
        return email
    }
}

extension Contacts {
    static func getContact() -> Contacts {
        Contacts(name: randomName(), surname: randomSurname(), phoneNumber: randomPhoneNumber(), email: randomEmail())
    }
    
    static func getContacts() -> [Contacts] {
        (1...10).map { _ in getContact()}
    }
}
