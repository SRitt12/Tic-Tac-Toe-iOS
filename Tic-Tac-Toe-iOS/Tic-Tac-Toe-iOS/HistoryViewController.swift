//
//  HistoryViewController.swift
//  Tic-Tac-Toe-iOS
//
//  Created by student on 11/16/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var playedLabel: UILabel!
    @IBOutlet weak var winXLabel: UILabel!
    @IBOutlet weak var winOLabel: UILabel!
    @IBOutlet weak var loseXLabel: UILabel!
    @IBOutlet weak var loseOLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func Reset(_ sender: Any) {
        GameStats.shared.reset()
        playedLabel.text = String(GameStats.shared.gamesPlayed)
        winXLabel.text = String(GameStats.shared.winX)
        winOLabel.text = String(GameStats.shared.winO)
        loseXLabel.text = String(GameStats.shared.loseX)
        loseOLabel.text = String(GameStats.shared.loseO)
        winnerLabel.text = GameStats.shared.predictWinner()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playedLabel.text = String(GameStats.shared.gamesPlayed)
        winXLabel.text = String(GameStats.shared.winX)
        winOLabel.text = String(GameStats.shared.winO)
        loseXLabel.text = String(GameStats.shared.loseX)
        loseOLabel.text = String(GameStats.shared.loseO)
        winnerLabel.text = GameStats.shared.predictWinner()
    }

}
