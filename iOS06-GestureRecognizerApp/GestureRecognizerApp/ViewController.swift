//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Faruk Kuz on 28.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    var flag = true
    
    @objc func changePic() {
        if flag == true {
            imageView.image = UIImage(named: "usmanaga")
            nameLabel.text = "Usman Aga"
            flag = false
        } else {
            imageView.image = UIImage(named: "fırıldaksinan")
            nameLabel.text = "Fırıldak Sinan"
            flag = true
        }
    }
}

