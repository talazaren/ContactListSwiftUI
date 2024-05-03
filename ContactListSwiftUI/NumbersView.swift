//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import SwiftUI

struct NumbersView: View {
    @State private var singleSelection: UUID?
    
    let title: String
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(selection: $singleSelection) {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullname)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundStyle(.blue)
                            Text(contact.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundStyle(.blue)
                            Text(contact.email)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(title)
        }
    }
}


#Preview {
    NumbersView(title: "Contact List", contacts: Person.getContactList())
}
