//
//  Brain.swift
//  FizzBuzzTDD
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import Foundation

class Brain {
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 5, number: number) {
            return "Buzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        }
        return "\(number)"
    }
}
