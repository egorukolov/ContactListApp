//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Egor Ukolov on 09.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {

    var persons: [Person] = []
   

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //   guard segue.identifier == "MoreInfo" else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let moreInfoVC = segue.destination as! ContactListMoreInfoViewController
            moreInfoVC.person = persons[indexPath.row]
        }
    }
   

}
