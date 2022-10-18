//
//  ViewController.swift
//  Daniel Apple Pie
//
//  Created by 7g on 10/17/22.
//

import UIKit

var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
let incorrectMovesAllowed = 7

var totalWins = 0
var totalLosses = 0

class ViewController: UIViewController {

    @IBOutlet weak var correctWorldLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var lettterButton: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord,incorrectMovesRemaining: incorrectMovesAllowed)

    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

