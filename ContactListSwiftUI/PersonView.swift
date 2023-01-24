//
//  PersonView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    
    var body: some View {
        Text(person.name)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getContacts().last!)
    }
}
