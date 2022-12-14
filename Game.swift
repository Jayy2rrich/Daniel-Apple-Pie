//
//  Game.swift
//  Daniel Apple Pie
//
//  Created by 7g on 10/18/22.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) {
    guessedLetters.append(letter)
    if !word.contains(letter) {
    incorrectMovesRemaining -= 1
        }
    }
}

