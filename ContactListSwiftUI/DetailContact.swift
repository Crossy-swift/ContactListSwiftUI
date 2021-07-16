//
//  DetailContact.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import SwiftUI

struct DetailContact: View {
    
    var persons: Person
    
    var body: some View {
        
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            ContactRow(person: persons)
        }
        .navigationBarTitle(persons.fullname)
    }
}

struct DetailContact_Previews: PreviewProvider {
    static var previews: some View {
        DetailContact(persons: Person.getPersons().first!)
    }
}
