//
//  ViewControllerTests.swift
//  FizzBuzzTDDTests
//
//  Created by Pranav Kasetti on 07/02/2023.
//

import XCTest
@testable import FizzBuzzTDD

final class ViewControllerTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
        UIApplication.shared.delegate?.window??.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
        viewController = nil
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testMoveFizzIsCorrectIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController?.gameScore, 3)
    }
    
    func testMoveFizzIsIncorrectDoesNotIncrementScore() {
        viewController.game?.score = 1
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController?.gameScore, 1)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
}
