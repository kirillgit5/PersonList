//
//  PersonListInformationTableViewController.swift
//  PersonList
//
//  Created by Кирилл Крамар on 09.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

class PersonListInformationTableViewController: UITableViewController {

    //MARK: - Private Property
    private let persons = DataManager.fetchPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personList", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "\(persons[indexPath.section].telephoneNumber)"
            cell.imageView?.image = UIImage(systemName: "phone.fill")
        } else {
            cell.textLabel?.text = "\(persons[indexPath.section].emailAdress)"
            cell.imageView?.image = UIImage(systemName: "envelope.fill")
        }
        return cell
    }
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


