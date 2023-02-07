//
//  ViewController.swift
//  FizzBuzzTDD
//
//  Created by Pranav Kasetti on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int? {
        didSet {
            if let gameScore {
                numberButton.setTitle("\(gameScore)", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let unwrappedScore = gameScore else {
            print("Game score is nil")
            return
        }
        
        let nextScore = unwrappedScore + 1
        play(move: "\(nextScore)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(brain: Brain())
        gameScore = game?.score
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

