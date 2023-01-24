//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct NumbersView: View {
    let contactList: [Person]
    
    var body: some View {
        List(contactList) { contact in
            Section {
                HStack {
                    Image(systemName: "phone")
                    Text(contact.phoneNumber)
                }
                HStack {
                    Image(systemName: "tray")
                    Text(contact.email)
                        .fontDesign(.monospaced)
                        .textCase(.uppercase)
                }
            } header: {
                Text("\(contact.name) \(contact.surname)")
            }

        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contactList: Person.getContacts())
    }
}
