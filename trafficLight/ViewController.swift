//
//  ViewController.swift
//  trafficLight
//
//  Created by Vasiliy on 26.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet weak var buttonSwichLabel: UIButton!
    
    var isFirstTab = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircle.layer.cornerRadius = 50
        redCircle.alpha = 0.3
        yellowCircle.layer.cornerRadius = 50
        yellowCircle.alpha = 0.3
        greenCircle.layer.cornerRadius = 50
        greenCircle.alpha = 0.3
        
        buttonSwichLabel.layer.cornerRadius = 10
    }
    
    @IBAction func buttonSwitchDidTapped() {
        
        if isFirstTab {
            buttonSwichLabel.setTitle("Next", for: .normal)
            redCircle.alpha = 1
            isFirstTab = false
        } else {
            if redCircle.alpha == 1 {
                redCircle.alpha = 0.3
                yellowCircle.alpha = 1
            } else if yellowCircle.alpha == 1 {
                yellowCircle.alpha = 0.3
                greenCircle.alpha = 1
            } else if greenCircle.alpha == 1 {
                redCircle.alpha = 1
                greenCircle.alpha = 0.3
            }
        }
    }
}

