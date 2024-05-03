//
//  Persons.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let telephones = dataStore.telephones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let count = min(
            names.count,
            surnames.count,
            telephones.count,
            emails.count
        )
        
        for index in 0..<count {
            let person = Person(
                id: index, 
                name: names[index],
                surname: surnames[index],
                phoneNumber: telephones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

