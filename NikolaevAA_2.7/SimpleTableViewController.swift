//
//  SimpleTableViewController.swift
//  NikolaevAA_2.7
//
//  Created by Anton Nikolaev on 10.11.2021.
//

import UIKit

class SimpleTableViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        personVC.person = persons[indexPath.row]

    }
   

}
