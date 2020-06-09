//
//  DataManager.swift
//  PersonList
//
//  Created by Кирилл Крамар on 09.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

class DataManager {
    
    //MARK : - Private Property
    static private var persons = [Person]()
   static private var firstNames = ["Алан" , "Георгий" , "Константин" , "Роман" , "Александр" , "Герман" ,
                                        "Лев" , "Ростислав" , "Алексей" , "Глеб" , "Леонид", "Руслан" ,
                                        "Альберт", "Гордей", "Макар", "Рустам", "Анатолий", "Григорий",
                                        "Максим" , "Савва"]
   static private var lastNames   = ["Иванов" , "Смирнов" , "Кузнецов" , "Попов" , "Васильев" , "Петров" ,
                                        "Соколов" , "Михайлов" , "Новиков" , "Фёдоров" , "Морозов" , "Волков" ,
                                        "Алексеев" , "Лебедев" , "Семёнов" , "Егоров" , "Павлов" , "Козлов",
                                        "Степанов" , "Николаев"]
    
   
   static func fetchPersons() -> [Person] {
    if (persons.isEmpty) {
        let countPerson = firstNames.count >= lastNames.count ? lastNames.count : firstNames.count
        var persons = [Person]()
        for _ in 0...countPerson - 1 {
            let firstName = firstNames.remove(at: Int.random(in: 0...firstNames.count-1 ))
            let lastName  = lastNames.remove(at: Int.random(in: 0...lastNames.count-1 ))
            let telephoneNumber = generationPhoneNumber(persons)
            persons.append(Person(firstName: firstName, lastName: lastName, telephoneNumber: telephoneNumber))
        }
        self.persons = persons
        return persons
    } else {
        return persons
    }
    }
    
    //MARK : - Private Methods
   static private func generationPhoneNumber(_ persons: [Person])  -> Int {
        var telephoneNumber = Int.random(in: 1000000...9999999)
        var isUniqueNumber = false
        while( !isUniqueNumber ) {
            let telephonesNumbers = persons.map{$0.telephoneNumber}
            if telephonesNumbers.contains(telephoneNumber) {
                telephoneNumber = Int.random(in: 1000000...9999999)
            } else {
                isUniqueNumber = true
            }
        }
        return telephoneNumber
    }
    
    
}

