//
//  ContactRow.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import SwiftUI

struct ContactRow: View {
    
    let person: Person
    
    var body: some View {
        
        ContactInfo(person: person.phoneNumber, image: "phone")
        ContactInfo(person: person.email, image: "mail")
    }
}

struct ContactInfo: View {
    
    let person: String
    let image: String
    
    var body: some View {
        
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text("\(person)")
        }
        .font(.title2)
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(person: Person.getPerson()[0])
    }
}
