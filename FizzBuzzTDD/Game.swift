//
//  Game.swift
//  FizzBuzzTDD
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import Foundation

class Game {
    
    var score: Int
    private let brain: Brain
    
    init(brain: Brain) {
        score = 0
        self.brain = brain
    }
    
    func play(move: String) -> Bool {
        if move == brain.check(number: score + 1) {
            score += 1
            return true
        }
        return false
    }
}
