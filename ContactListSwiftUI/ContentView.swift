//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(title: "Contact List", contacts: contactList)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            NumbersView(title: "Contact List", contacts: contactList)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
