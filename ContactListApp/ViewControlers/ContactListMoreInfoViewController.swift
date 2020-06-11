//
//  ContactListMoreInfoViewController.swift
//  ContactListApp
//
//  Created by Egor Ukolov on 11.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ContactListMoreInfoViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }
}
