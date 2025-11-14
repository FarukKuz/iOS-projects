//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Faruk Kuz on 28.08.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var userNames = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name: \(userNames)"
    }
}
