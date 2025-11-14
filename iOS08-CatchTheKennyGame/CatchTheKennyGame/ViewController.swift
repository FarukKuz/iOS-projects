//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Faruk Kuz on 1.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    
    @IBOutlet weak var k1: UIImageView!
    @IBOutlet weak var k2: UIImageView!
    @IBOutlet weak var k3: UIImageView!
    @IBOutlet weak var k4: UIImageView!
    @IBOutlet weak var k5: UIImageView!
    @IBOutlet weak var k6: UIImageView!
    @IBOutlet weak var k7: UIImageView!
    @IBOutlet weak var k8: UIImageView!
    @IBOutlet weak var k9: UIImageView!
    @IBOutlet weak var k10: UIImageView!
    @IBOutlet weak var k11: UIImageView!
    @IBOutlet weak var k12: UIImageView!
    
    var kennyArray = [UIImageView]()
    
    var timer = Timer()
    var hider = Timer()
    var counter = 10
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        hider = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(hideKenny), userInfo: nil, repeats: true)
        
        
        //images
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        k1.addGestureRecognizer(recognizer1)
        k2.addGestureRecognizer(recognizer2)
        k3.addGestureRecognizer(recognizer3)
        k4.addGestureRecognizer(recognizer4)
        k5.addGestureRecognizer(recognizer5)
        k6.addGestureRecognizer(recognizer6)
        k7.addGestureRecognizer(recognizer7)
        k8.addGestureRecognizer(recognizer8)
        k9.addGestureRecognizer(recognizer9)
        k10.addGestureRecognizer(recognizer10)
        k11.addGestureRecognizer(recognizer11)
        k12.addGestureRecognizer(recognizer12)
        
        k1.isUserInteractionEnabled = true
        k2.isUserInteractionEnabled = true
        k3.isUserInteractionEnabled = true
        k4.isUserInteractionEnabled = true
        k5.isUserInteractionEnabled = true
        k6.isUserInteractionEnabled = true
        k7.isUserInteractionEnabled = true
        k8.isUserInteractionEnabled = true
        k9.isUserInteractionEnabled = true
        k10.isUserInteractionEnabled = true
        k11.isUserInteractionEnabled = true
        k12.isUserInteractionEnabled = true
        
        kennyArray = [k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12]
        
        hideKenny()
        
    }
    
    @objc func increaseScore() {
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func hideKenny() {
        for kenny in kennyArray {
            kenny.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(kennyArray.count - 1)))
        kennyArray[random].isHidden = false
    }
    
    @objc func timerFunction() {
        timeLabel.text = "\(counter)"
        counter -= 1
        
        if counter == -1 {
            timer.invalidate()
            performSegue(withIdentifier: "toResultPage", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultPage"{
            let dest = segue.destination as! ResultPageController
            dest.score = score
        }
    }
}

