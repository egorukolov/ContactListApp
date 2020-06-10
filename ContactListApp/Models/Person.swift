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
    let phone: String

}

extension Person {

    static func createContact() -> Person {
        
        let data = DataManager()
        
        let newSuperContact = Person(name: data.names.randomElement() ?? "",
                                     surname: data.surnames.randomElement() ?? "",
                                     email: data.emails.randomElement() ?? "",
                                     phone: data.phones.randomElement() ?? "")
        
        return newSuperContact
    }
    
    
    
}


