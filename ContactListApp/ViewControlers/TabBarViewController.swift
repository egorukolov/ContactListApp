//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Egor Ukolov on 11.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers(with: persons)
        
    }
    
    private func setupViewControllers(with persons: [Person]) {
        
        let contactListVC = viewControllers?.first as! ContactListViewController
        let contactListDetails = viewControllers?.last as! ContactListDetailsViewController
        
        contactListVC.persons = persons
        contactListDetails.persons = persons
    }
    
}
