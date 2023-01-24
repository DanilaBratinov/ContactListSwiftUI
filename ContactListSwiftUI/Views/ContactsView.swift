//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            ContactListView(contactList: contactList)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContacts())
    }
}
