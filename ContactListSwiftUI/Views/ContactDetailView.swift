//
//  ContactDetailView.swift
//  ContactListSwiftUI
//
//  Created by Tatiana Lazarenko on 5/3/24.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Person
    
    var body: some View {
        ZStack {
            Color(red: 244/255, green: 244/255, blue: 247/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.white)
                .frame(width: 350, height: 200)
                
                Spacer()
            }
            .padding()
            
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .padding()
                
                HStack {
                    Image(systemName: "phone")
                        .foregroundStyle(.blue)
                    Text(contact.phoneNumber)
                    
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.bottom, 5)
                
                HStack {
                    Image(systemName: "tray")
                        .foregroundStyle(.blue)
                    Text(contact.email)
                    
                    Spacer()
                }
                .padding(.leading, 20)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(contact.fullname)
    }
}

#Preview {
    ContactDetailView(contact: Person.getContactList().randomElement()!)
}
