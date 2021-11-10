//
//  ComplexTableViewController.swift
//  NikolaevAA_2.7
//
//  Created by Anton Nikolaev on 10.11.2021.
//

import UIKit

class ComplexTableViewController: UITableViewController {

    var persons:[Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phone
        } else {
            content.text = persons[indexPath.section].email
        }
        cell.contentConfiguration = content

        return cell
    }
    

   

}
