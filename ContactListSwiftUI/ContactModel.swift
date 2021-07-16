//
//  ContactModel.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import Foundation

struct Person {
    
    let id = UUID()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person{
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<iterationCount {
            let person =  Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
