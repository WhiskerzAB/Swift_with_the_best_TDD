//
//  Swift_with_the_best_TDDUITests.swift
//  Swift_with_the_best_TDDUITests
//
//  Created by Gabriel Peart on 2016-06-25.
//  Copyright © 2016 Gabriel Peart. All rights reserved.
//

import XCTest
@testable import Swift_with_the_best_TDD

class Swift_with_the_best_TDDUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testILoveCats() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(app.staticTexts[":("].exists)
        XCTAssertTrue(app.buttons["image"].exists)
        // After tapping on the button, the label ":(" should be updated to "I love cats"
        app.buttons["image"].tap()
        XCTAssertTrue(app.staticTexts["I love cats"].exists)
    }
    
}
