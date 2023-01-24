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
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.cyan)
                .padding(.leading, 100)
            
            HStack {
                Image(systemName: "phone")
                Text(person.phoneNumber)
            }
            
            HStack {
                Image(systemName: "tray")
                Text(person.email)
                    .textCase(.uppercase)
            }
        }
        .listStyle(.plain)
        .navigationTitle("\(person.name) \(person.surname)")
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getContacts().last!)
    }
}
