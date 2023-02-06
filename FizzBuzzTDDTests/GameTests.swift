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
        _ = game.play(move: "1")
        XCTAssertEqual(game.score, 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: "2")
        XCTAssertEqual(game.score, 2)
    }
    
    func testIfMoveIsRight() {
      game.score = 2
      let result = game.play(move: "Fizz")
      XCTAssert(result)
    }
    
    func testIfMoveIsWrong() {
      game.score = 1
      let result = game.play(move: "Fizz")
      XCTAssertFalse(result)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
      game.score = 1
      _ = game.play(move: "Fizz")
      XCTAssertEqual(game.score, 1)
    }
}
