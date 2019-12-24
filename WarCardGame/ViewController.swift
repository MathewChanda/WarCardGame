//
//  ViewController.swift
//  WarCardGame
//
//  Created by Mathew Chanda on 8/10/19.
//  Copyright © 2019 Mathew Chanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
      Pressed Button to change cards and determine which player will get
      the point
    */
    
    @IBAction func dealTapped( sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if(leftNumber > rightNumber){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        
        else if(leftNumber < rightNumber){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
}

