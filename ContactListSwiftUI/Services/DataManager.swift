//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Carl", "Ted", "Steven", "John", "Tim", "Bruce", "Sharon", "Aaron", "Allan", "Nikola"]
    
    let surnames = ["Robertson", "Butler", "Pennyworth", "Smith", "Murphy", "Black", "Dow", "Williams", "Jankin", "Isaacson"]
    
    let mails = ["@mail.ru", "@icloud.com", "@gmail.com"]

    var phoneNumber: [String] {
        var number: [String] = []
        
        for _ in 0...names.count {
            number.append("+7\(Int.random(in: 100000000...999999999))")
        }
        return number
    }
    
    private init() {}
}
