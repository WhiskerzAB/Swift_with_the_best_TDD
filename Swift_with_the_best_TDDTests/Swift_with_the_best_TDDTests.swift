//
//  Swift_with_the_best_TDDTests.swift
//  Swift_with_the_best_TDDTests
//
//  Created by Gabriel Peart on 2016-06-25.
//  Copyright © 2016 Gabriel Peart. All rights reserved.
//

import XCTest
@testable import Swift_with_the_best_TDD

class Swift_with_the_best_TDDTests: XCTestCase {
    
    // MARK: Initializing my test configuration
    
    var myCat: Cat!
    let catName = "Kasya"
    let catBreed = CatBreed.Ragdoll
    
    // MARK: Setup
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        XCTAssertNil(myCat)
    }
    
    // MARK: Tear Down
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        myCat = nil
    }
    
    // MARK: Testing Cat
    
    func testMyCat() {
        myCat = Cat(catName, breed: catBreed)
        
        XCTAssertEqual(myCat.name, catName)
        XCTAssertEqual(myCat.breed, catBreed)
        XCTAssertTrue(myCat.hasBreed())
    }
    
    func testNameInitializer() {
        myCat = Cat(name: catName)
        XCTAssertEqual(myCat.name, catName)
        XCTAssertEqual(myCat.breed, CatBreed.Unknown)
        XCTAssertFalse(myCat.hasBreed())
    }
    
    func testBreedInitializer() {
        myCat = Cat(breed: catBreed)
        XCTAssertEqual(myCat.name, Constants.DefaultName)
        XCTAssertEqual(myCat.breed, catBreed)
        XCTAssertTrue(myCat.hasBreed())
    }
    
    // MARK: Simple Tests
    
    func testOnePlusOneEqualsTwo() {
        XCTAssertEqual(1 + 1, 2, "one plus one should be equals two")
    }
    
    // MARK: Example of Performance Test
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .FullStyle
        dateFormatter.timeStyle = .FullStyle
        
        let date = NSDate()
        
        self.measureBlock {
            // Put the code you want to measure the time of here.
            let dateAsString = dateFormatter.stringFromDate(date)
            print(dateAsString)
        }
    }
    
}
