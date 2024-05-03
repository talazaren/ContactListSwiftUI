//
//  ContactsRowView.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import SwiftUI

struct ContactsRowView: View {
    let contact: Person
    
    var body: some View {
        NavigationLink(destination: ContactDetailView(contact: contact)) {
            Text(contact.fullname)
            Spacer()
        }
    }
}

#Preview {
    ContactsRowView(contact: Person.getContactList().randomElement()!)
}
