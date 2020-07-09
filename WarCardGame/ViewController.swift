//
//  ViewController.swift
//  WarCardGame
//
//  Created by Romeno Wenogk Fernando on 06/07/2020.
//  Copyright © 2020 Romeno Wenogk Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: UIButton) {
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        LeftImageView.image = UIImage(named: "card\(leftCardNumber)")
        RightImageView.image = UIImage(named: "card\(rightCardNumber)")
        
        if(leftCardNumber > rightCardNumber) {
            leftScore += 1;
            LeftScoreLabel.text = "\(leftScore)"
        } else if (leftCardNumber < rightCardNumber) {
            rightScore += 1;
            RightScoreLabel.text = "\(rightScore)"
        } else {
            
        }
    }
    
}

