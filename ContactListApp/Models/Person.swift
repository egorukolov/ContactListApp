//
//  Person.swift
//  ContactListApp
//
//  Created by Egor Ukolov on 09.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        
        "\(name) \(surname)"
    }
   
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumber.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index])
            
            persons.append(person)
        }
        
        return persons
        
    }
    
    enum Contacts: String {
        case phone = "phone"
        case email = "tray"
    }
    
}
