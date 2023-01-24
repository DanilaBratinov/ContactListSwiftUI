//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    let contactList = Person.getContacts()
    var body: some View {
        TabView {
            ContactsView(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            NumbersView(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
