//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContactListView: View {
    let contactList: [Person]
        
    var body: some View {
        List(contactList) { contact in
            NavigationLink(destination: PersonView(person: contact)) {
                Text("\(contact.name) \(contact.surname)")
            }
        }
        .navigationTitle("Contact List")
        .listStyle(.plain)
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.getContacts())
    }
}
