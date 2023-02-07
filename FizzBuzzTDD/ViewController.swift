//
//  ViewController.swift
//  FizzBuzzTDD
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(brain: Brain())
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
}

