//
//  ResultPageController.swift
//  CatchTheKennyGame
//
//  Created by Faruk Kuz on 1.09.2024.
//

import UIKit

class ResultPageController: UIViewController {
    
    @IBOutlet weak var textScoreLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(score)"
    }
    
    @IBAction func restartClicked(_ sender: Any) {
    }
    
    @IBAction func homepageClicked(_ sender: Any) {
    }
    
}
