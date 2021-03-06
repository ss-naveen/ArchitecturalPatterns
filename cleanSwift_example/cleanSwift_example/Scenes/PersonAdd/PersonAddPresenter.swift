//
//  PersonAddPresenter.swift
//  cleanSwift_example
//
//  Created by Oliver Mastny on 06/01/2017.
//  Copyright (c) 2017 Oliver Mastny. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol PersonAddPresenterInput {
    func personAdded()
    func cancelBarButtonTouched()
}

protocol PersonAddPresenterOutput: class {
    func dismissViewController()
}

class PersonAddPresenter: PersonAddPresenterInput {
    weak var output: PersonAddPresenterOutput!
    
    func personAdded() {
        output.dismissViewController()
    }
    func cancelBarButtonTouched() {
        output.dismissViewController()
    }
}
