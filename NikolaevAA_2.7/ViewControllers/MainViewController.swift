//
//  MainViewController.swift
//  NikolaevAA_2.7
//
//  Created by Anton Nikolaev on 10.11.2021.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let persons = Person.getPersons()
        let controllers = viewControllers!
        let simpleNVC = controllers[0] as! SimpleNavigationViewController
        let simple = simpleNVC.topViewController as! SimpleTableViewController
        simple.persons = persons
        let complexNVC = controllers[1] as! ComplexNavigationViewController
        let complex = complexNVC.topViewController as! ComplexTableViewController
        complex.persons = persons
    }
}
