//
//  ViewController.swift
//  trafficLight
//
//  Created by Vasiliy on 26.01.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet weak var redCircleView: UIView!
    @IBOutlet weak var yellowCircleView: UIView!
    @IBOutlet weak var greenCircleView: UIView!
    
    @IBOutlet weak var buttonSwichLabel: UIButton!
    
    var isFirstTab = true
    let lightOn = 1.0
    let lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircleView.layer.cornerRadius = 50
        redCircleView.alpha = lightOff
        yellowCircleView.layer.cornerRadius = 50
        yellowCircleView.alpha = lightOff
        greenCircleView.layer.cornerRadius = 50
        greenCircleView.alpha = lightOff
        
        buttonSwichLabel.layer.cornerRadius = 10
    }
    
    @IBAction func buttonSwitchDidTapped() {
        
        if isFirstTab {
            buttonSwichLabel.setTitle("Next", for: .normal)
            redCircleView.alpha = lightOn
            isFirstTab = false
        } else {
            if redCircleView.alpha == lightOn {
                redCircleView.alpha = lightOff
                yellowCircleView.alpha = lightOn
            } else if yellowCircleView.alpha == lightOn {
                yellowCircleView.alpha = lightOff
                greenCircleView.alpha = lightOn
            } else if greenCircleView.alpha == lightOn {
                redCircleView.alpha = lightOn
                greenCircleView.alpha = lightOff
            }
        }
    }
}

