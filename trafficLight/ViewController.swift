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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircleView.layer.cornerRadius = 50
        redCircleView.alpha = 0.3
        yellowCircleView.layer.cornerRadius = 50
        yellowCircleView.alpha = 0.3
        greenCircleView.layer.cornerRadius = 50
        greenCircleView.alpha = 0.3
        
        buttonSwichLabel.layer.cornerRadius = 10
    }
    
    @IBAction func buttonSwitchDidTapped() {
        
        if isFirstTab {
            buttonSwichLabel.setTitle("Next", for: .normal)
            redCircleView.alpha = 1
            isFirstTab = false
        } else {
            if redCircleView.alpha == 1 {
                redCircleView.alpha = 0.3
                yellowCircleView.alpha = 1
            } else if yellowCircleView.alpha == 1 {
                yellowCircleView.alpha = 0.3
                greenCircleView.alpha = 1
            } else if greenCircleView.alpha == 1 {
                redCircleView.alpha = 1
                greenCircleView.alpha = 0.3
            }
        }
    }
}

