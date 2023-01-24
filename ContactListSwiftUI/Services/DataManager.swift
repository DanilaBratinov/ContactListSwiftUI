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
    
    let phoneNumber = "+7\(Int.random(in: 100000000000...9999999999))"

    let email = ["dasdasd"]
    
    private init() {}
}
