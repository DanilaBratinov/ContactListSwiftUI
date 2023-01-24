//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let contactList: [Contacts]
    
    var body: some View {
        List(contactList) { contact in
            NavigationLink(destination: PersonView(person: contact)) {
                Text("\(contact.name) \(contact.surname)")
            }
        }
        .listStyle(.plain)
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Contacts.getContacts())
    }
}
