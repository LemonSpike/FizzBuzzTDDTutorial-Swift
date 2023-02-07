//
//  GameTests.swift
//  FizzBuzzTDDTests
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import XCTest
@testable import FizzBuzzTDD

final class GameTests: XCTestCase {
    
    var game = Game(brain: Brain())
    
    override func setUpWithError() throws {
        game = Game(brain: Brain())
    }
    
    func testGameStartsAtZero() {
        XCTAssertEqual(game.score, 0)
    }
    
    func testOnPlayScoreIncremented() {
        _ = game.play(move: .number)
        XCTAssertEqual(game.score, 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: .number)
        XCTAssertEqual(game.score, 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssert(result.right)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertFalse(result.right)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssert(result.right)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 2
        let result = game.play(move: .buzz)
        XCTAssertFalse(result.right)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: .fizzBuzz)
        XCTAssert(result.right)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 13
        let result = game.play(move: .fizzBuzz)
        XCTAssertFalse(result.right)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
