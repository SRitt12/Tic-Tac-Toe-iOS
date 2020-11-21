//
//  GameStats.swift
//  Tic-Tac-Toe-iOS
//
//  Created by student on 11/21/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit
class GameStats{
    static let shared = GameStats()
    private init(){
        gamesPlayed = 0
        winX = 0
        winO = 0
        loseX = 0
        loseO = 0
        likelyWinner = ""
    }
    var gamesPlayed = 0
    var winX = 0
    var winO = 0
    var loseX = 0
    var loseO = 0
    var likelyWinner: String
    
    func reset(){
        gamesPlayed = 0
        winX = 0
        winO = 0
        loseX = 0
        loseO = 0
        likelyWinner = predictWinner()
    }
    func predictWinner() -> String{
        if gamesPlayed > 2{
            if winX > winO{
                return "X"
            }
            else{
                return "O"
            }
        }
        return "No Prediction"
    }
}
