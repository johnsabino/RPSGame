//
//  GameManager.swift
//  RPSGame
//
//  Created by João Paulo de Oliveira Sabino on 04/07/19.
//  Copyright © 2019 João Paulo de Oliveira Sabino. All rights reserved.
//

import Foundation

enum RPS: String {
    case rock = "Rock"
    case paper = "Paper"
    case scissor = "Scissor"
    
}
class GameManager {
    static let shared = GameManager()
    
    var randomRPS: Int = 0
    var current: RPS = .paper
    var score: Int = 0
    
    func setNew() {
        let rpsString: [RPS] = [.paper, .scissor, .rock]
        let new = rpsString[Int.random(in: 0...2)]
        if new == current {
            setNew()
        } else {
            current = new
        }
    }
    
    func verify(input: String) -> Bool {

        var guess: RPS = .paper
        
        switch input {
        case "FistHand":
            guess = .scissor
        case "FiveHand":
            guess = .rock
        case "VictoryHand":
            guess = .paper
        default:
            break
        }
        
        if current == guess {
            score += 1
        }
        return current == guess
    }
    
    
}
