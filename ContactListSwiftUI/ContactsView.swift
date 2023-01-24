//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contactList: [Contacts]
    
    var body: some View {
        NavigationStack {
            VStack {
                ContactListView(contactList: contactList)
            }.navigationTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Contacts.getContacts())
    }
}
