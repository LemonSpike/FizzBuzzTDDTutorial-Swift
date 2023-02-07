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
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(brain: Brain())
        gameScore = game?.score
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
}

