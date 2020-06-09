//
//  DetailInformationViewController.swift
//  PersonList
//
//  Created by Кирилл Крамар on 09.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

class DetailInformationViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    //MARK: - Public Property
    var person: Person!
    
    //MARK: - Life Cycles View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        setValue(for: phoneNumberLabel,emailLabel)
    }
    
    //MARK: - Private Methods
     private func setValue(for labels: UILabel...) {
        labels.forEach{ label in
            switch label.tag {
            case 0: label.text = "\(person.telephoneNumber)"
            case 1: label.text = "\(person.emailAdress)"
            default:
                break
            }
            
        }
    }
}
