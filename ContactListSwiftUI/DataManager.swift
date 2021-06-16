//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Артем Репин on 15.06.2021.
//

class DataManager {
    
    let names = [
        "Jeremy",
        "Mike",
        "Sofie",
        "Gordon",
        "Maria",
        "Leon",
        "Gregor",
        "Stiven",
        "Leonardo",
        "Govard"
    ]
    
    let surnames = [
        "Cage",
        "Birkin",
        "Lovecraft",
        "Tolkien",
        "Brzeczyszczykiewicz",
        "Freeman",
        "Rukolo",
        "Stone",
        "Cook",
        "Kains"
    ]
    
    let phoneNumbers = [
        "+7(986)558-68-09",
        "+7(987)789-22-45",
        "+7(908)875-94-78",
        "+7(879)902-58-31",
        "+7(992)900-89-69",
        "+7(093)086-25-84",
        "+7(124)095-45-80",
        "+7(518)235-52-41",
        "+7(124)124-55-21",
        "+7(154)975-35-92"
    ]
    
    let emails = [
        "cool@gmail.com",
        "iAmTheBest@gmail.com",
        "Saint@gmail.com",
        "DoNotWriteToMe@gmail.com",
        "BestEmail@gmail.com",
        "DidNotInvent@gmail.com",
        "BlaBlaBla79@gmail.com",
        "FatherRoach@gmail.com",
        "KissTheGoat@gmail.com",
        "PerfectName@gmail.com"
    ]
    
    static let shared = DataManager()
    
    private init() {}
}
