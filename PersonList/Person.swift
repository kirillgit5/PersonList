//
//  Person.swift
//  PersonList
//
//  Created by Кирилл Крамар on 09.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName:  String
    let telephoneNumber: Int
    var emailAdress: String {
        firstName + lastName + "@mail.com"
    }
    var fullName: String {
        firstName + " " + lastName
    }
    
}
