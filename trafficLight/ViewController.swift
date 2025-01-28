//
//  ViewController.swift
//  trafficLight
//
//  Created by Vasiliy on 26.01.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    enum CurrentView {
        case red, yellow, green
    }
    
    @IBOutlet weak var redCircleView: UIView!
    @IBOutlet weak var yellowCircleView: UIView!
    @IBOutlet weak var greenCircleView: UIView!
    
    @IBOutlet weak var buttonSwichLabel: UIButton!
    
    private var currentView = CurrentView.red
    private var isFirstTab = true
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircleView.layer.cornerRadius = redCircleView.frame.width / 2
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.width / 2
        greenCircleView.layer.cornerRadius = greenCircleView.frame.width / 2
        
        greenCircleView.alpha = lightOff
        redCircleView.alpha = lightOff
        yellowCircleView.alpha = lightOff
        
        buttonSwichLabel.layer.cornerRadius = 10
    }
    
    @IBAction func buttonSwitchDidTapped() {
        
        if isFirstTab {
            buttonSwichLabel.setTitle("Next", for: .normal)
            isFirstTab = false
        }
        
        switch currentView {
        case .red:
            redCircleView.alpha = lightOn
            greenCircleView.alpha = lightOff
            currentView = .yellow
        case .yellow:
            yellowCircleView.alpha = lightOn
            redCircleView.alpha = lightOff
            currentView = .green
        case .green:
            greenCircleView.alpha = lightOn
            yellowCircleView.alpha = lightOff
            currentView = .red
        }
    }
}

