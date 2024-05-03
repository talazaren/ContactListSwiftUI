//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import SwiftUI

struct ContactsView: View {
    let title: String
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                ContactsRowView(contact: contact)
            }
            .listStyle(.plain)
            .navigationTitle(title)
            .padding(.top)
            
        }
    }
}

#Preview {
    ContactsView(title: "Contact List", contacts: Person.getContactList())
}
