//
//  ViewController.swift
//  Zar Uygulaması
//
//  Created by Muhammed Karakul on 3.05.2018.
//  Copyright © 2018 Muhammed Karakul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstDiceImageView: UIImageView!
    @IBOutlet var secondDiceImageView: UIImageView!
    
    let diceSurface = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.becomeFirstResponder()
    }
    
    override var canBecomeFirstResponder: Bool {
        get{
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollTapped()
        }
    }
    

    @IBAction func rollTapped() {
        let diceFirst = Int(arc4random_uniform(6))
        let diceSecond = Int(arc4random_uniform(6))
        
        firstDiceImageView.image = diceSurface[diceFirst]
        secondDiceImageView.image = diceSurface[diceSecond]
    }
    
}

