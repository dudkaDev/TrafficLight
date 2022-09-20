//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Абакумов on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    
    private let on: CGFloat = 1
    private let off: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 12

        redLight.alpha = off
        yellowLight.alpha = off
        greenLight.alpha = off
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
    
    @IBAction func tappedButton() {
        if button.currentTitle == "START" {
            button.setTitle("NEXT", for: .normal)
        }
        
        changeToNextColor()
    }
    
    private func changeToNextColor() {
        let roundAlphaRed = round(redLight.alpha * 10) / 10
        let roundAlphaYellow = round(yellowLight.alpha * 10) / 10
        let roundAlphaGreen = round(greenLight.alpha * 10) / 10
        
        if roundAlphaRed == off,
           roundAlphaYellow == off,
           roundAlphaGreen == off
        {
            redLight.alpha = on
            
        } else if redLight.alpha == on {
            redLight.alpha = off
            yellowLight.alpha = on
        } else if yellowLight.alpha == on {
            yellowLight.alpha = off
            greenLight.alpha = on
        } else if greenLight.alpha == on {
            greenLight.alpha = off
            redLight.alpha = on
        }
    }
}
