//
//  NumbersList.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import SwiftUI

struct NumbersList: View {
    
    var persons: [Person]
    
    var body: some View {
        
        VStack {
            List {
                ForEach(persons, id: \.id) { person in
                    Section(header: Text(person.fullname)) {
                        ContactRow(person: person)
                    }
                    .textCase(.none)
                }
            }
        }
    }
}
struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList(persons: Person.getPersons())
    }
}
