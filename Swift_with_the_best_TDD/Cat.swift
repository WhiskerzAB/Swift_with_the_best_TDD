//
//  Cat.swift
//  Swift_with_the_best_TDD
//
//  Created by Gabriel Peart on 2016-06-25.
//  Copyright © 2016 Gabriel Peart. All rights reserved.
//

import Foundation

class Cat {
    
    let name: String
    let breed: CatBreed
    
    init(_ name: String, breed: CatBreed) {
        self.name = name
        self.breed = breed
    }
    
    convenience init(name: String) {
        self.init(name, breed: .Unknown)
    }
    
    convenience init(breed: CatBreed) {
        self.init(Constants.DefaultName, breed: breed)
    }
    
    func hasBreed() -> Bool {
        return self.breed != .Unknown
    }
    
}
