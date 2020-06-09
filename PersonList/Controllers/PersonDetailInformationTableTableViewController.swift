//
//  PersonDetailInformationTableTableViewController.swift
//  PersonList
//
//  Created by Кирилл Крамар on 09.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

class PersonDetailInformationTableTableViewController: UITableViewController {

    //MARK : - Private Property
    let persons = DataManager.fetchPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    //MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailInformationVC = segue.destination as! DetailInformationViewController
        detailInformationVC.person = persons[indexPath.row]
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].fullName
        return cell
    }
    

    

    

}
