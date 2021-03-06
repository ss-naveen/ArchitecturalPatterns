//
//  PersonsWorker.swift
//  cleanSwift_example
//
//  Created by Oliver Mastny on 06/01/2017.
//  Copyright (c) 2017 Oliver Mastny. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol PersonsStoreProtocol {
    func getPersons(_ completionHandler: (_ persons: [Person]) -> Void)
    func removePersons()
}

class PersonsWorker: PersonsStoreProtocol  {
    func getPersons(_ completionHandler: (_ persons: [Person]) -> Void) {
        if let objects = RealmService.sharedInstance.get(objectType: Person.self), let persons = objects.toArray() as? [Person] {
            completionHandler(persons)
        }
    }
    func removePersons() {
        RealmService.sharedInstance.removeAll(withObjectType: Person.self)
    }
}
