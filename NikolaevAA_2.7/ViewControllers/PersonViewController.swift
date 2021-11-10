//
//  PersonViewController.swift
//  NikolaevAA_2.7
//
//  Created by Anton Nikolaev on 10.11.2021.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
