//
//  ViewControllerUITests.swift
//  FizzBuzzTDDUITests
//
//  Created by Pranav Kasetti on 07/02/2023.
//

import XCTest

final class ViewControllerUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonIncrementsScoreTwice() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
}
