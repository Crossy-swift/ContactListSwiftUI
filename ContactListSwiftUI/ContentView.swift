//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var persons = Person.getPerson()
    
    var body: some View {
        
        NavigationView {
            TabView {
                HomeScreen(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                
                NumbersList(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
