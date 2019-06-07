//
//  ViewController.swift
//  Shots
//
//  Created by Carly Cameron on 6/6/19.
//  Copyright © 2019 Carly Cameron. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RandomNumberGenerator {
    
    
    @IBOutlet weak var shotLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var beginOutline: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginOutline.layer.borderWidth = 0.5
        beginOutline.layer.borderColor = UIColor.black.cgColor
        
    }

    @IBAction func beginButton(_ sender: Any) {
        
        let randNum = Int.random(in: 3...8)
        shotLabel.text = "\(randNum)"
        let minutes = 60 / randNum
        minutesLabel.text = "\(minutes)"
        
        
    }
    
    
}

