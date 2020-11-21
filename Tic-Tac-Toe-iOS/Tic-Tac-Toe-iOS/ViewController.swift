//
//  ViewController.swift
//  Tic-Tac-Toe-iOS
//
//  Created by student on 11/11/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var playerTurn = 0 //0 = O, 1 = X
    var currentBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameActive = true
    var count = 1
    let potentialWinStates = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    @IBOutlet weak var TurnLabel: UILabel!
    @IBOutlet weak var WinnerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func playerMove(_ sender: AnyObject) {
        if (currentBoard[sender.tag-1] == 0 && gameActive == true) {
            currentBoard[sender.tag-1] = playerTurn
            if(playerTurn == 1) {
                sender.setImage(UIImage(named: "Cross.png"), for: UIControl.State())
                playerTurn = 0
            }
            else {
                sender.setImage(UIImage(named: "Circle.png"), for: UIControl.State())
                playerTurn = 1
            }
            self.findWinner()
        }
    }
    func findWinner() {
        for state in potentialWinStates {
            if currentBoard[state[0]] != 0 && currentBoard[state[0]] == currentBoard[state[1]] && currentBoard[state[1]] == currentBoard[state[2]] {
                gameActive = false

                if currentBoard[state[0]] == 1 {
                    WinnerLabel.text = "X has Won!"
                    GameStats.shared.gamesPlayed += 1
                    GameStats.shared.winX += 1
                    GameStats.shared.loseO += 1
                } else {
                    WinnerLabel.text = "O has Won!"
                    GameStats.shared.gamesPlayed += 1
                    GameStats.shared.winO += 1
                    GameStats.shared.loseX += 1
                }
                if gameActive == true{
                    for i in currentBoard{
                        count = i*count
                    }
                    if count != 0
                    {
                        WinnerLabel.text = "Draw. No Winners!"
                        GameStats.shared.gamesPlayed += 1
                    }
                }
                WinnerLabel.isHidden = false
        }
    }
}

}
