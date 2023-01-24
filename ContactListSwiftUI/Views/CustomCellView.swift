//
//  SwiftUIView.swift
//  ContactListSwiftUI
//
//  Created by Данила Братинов on 24.01.2023.
//

import SwiftUI

struct CustomCellView: View {
    let person: Person
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemMint)
                .frame(width: 300, height: 125)
                .cornerRadius(20)
                .overlay {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(person.name) \(person.surname)")
                                .fontWeight(.bold)
                                .font(.title)
                        }
                        .padding(.top, 10)
                        Divider()
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "phone")
                                Text("\(person.phoneNumber)")
                            }
                            
                            HStack {
                                Image(systemName: "tray")
                                Text("\(person.email)")
                            }
                        }
                        .padding(.bottom, 15)
                    }
                    .padding(.leading, 10)
                    .foregroundColor(.white)
                }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCellView(person: Person.getContacts().last!)
    }
}
