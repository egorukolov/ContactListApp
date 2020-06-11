//
//  DataManager.swift
//  ContactListApp
//
//  Created by Egor Ukolov on 10.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    
    let emails = [
        "user@mail.ru",
        "ivanov2003@gmail.com",
        "megadestroyer2000@yandex.ru",
        "qwerty@yahoo.com",
        "anonymous@rambler.ru"
    ]
    
    let phoneNumbers = ["3853742", "9582741", "8573904", "7501739", "7089582"]
}
