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

    
    func playToFourteen() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
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
    
    func testTapFizzButtonIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapFizzButtonDoesNotIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapBuzzButtonIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        numberButton.tap()
        let buzzButton = app.buttons["buzzButton"]
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapBuzzButtonDoesNotIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let buzzButton = app.buttons["buzzButton"]
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapFizzBuzzButtonIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        
        playToFourteen()
        
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        fizzBuzzButton.tap()
        let newScore = app.buttons["numberButton"].label
        XCTAssertEqual(newScore, "15")
    }
    
    func testTapFizzBuzzButtonDoesNotIncrementsScore() {
        let app = XCUIApplication()
        app.launch()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
}
