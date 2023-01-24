//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView(contactList: Contacts.getContacts())
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            NumbersView()
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
