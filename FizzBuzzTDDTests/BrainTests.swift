//
//  BrainTests.swift
//  FizzBuzzTDDTests
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import XCTest
@testable import FizzBuzzTDD

final class BrainTests: XCTestCase {
    
    var brain = Brain()
    
    override func setUpWithError() throws {
        brain = Brain()
    }
    
    override func tearDownWithError() throws {
        
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 3)
        XCTAssert(result)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 1)
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 5)
        XCTAssert(result)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 3)
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 15)
        XCTAssert(result)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 5)
        XCTAssertFalse(result)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testCheckOne() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.number)
    }
}
