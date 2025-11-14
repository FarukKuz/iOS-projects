//
//  ViewController.swift
//  SegueApp
//
//  Created by Faruk Kuz on 28.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nagivateClicked: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            // as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.userNames = userName
        }
    }
}

