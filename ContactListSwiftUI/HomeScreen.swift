//
//  HomeScreen.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import SwiftUI

struct HomeScreen: View {
    
    var persons: [Person]
    
    var body: some View {
        
        List(persons, id: \.id) { person in
            NavigationLink(
                person.fullname,
                destination: DetailContact(persons: person)
            )
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(persons: Person.getPersons())
    }
}
