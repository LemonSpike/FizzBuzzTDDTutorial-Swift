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
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
            
        if result == move {
            score += 1
            return (true, score)
        } else {
             return (false, score)
        }
    }
}
