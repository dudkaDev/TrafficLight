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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 12
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    @IBAction func tappedButton() {
        button.setTitle("NEXT", for: .normal)
        
        changeToNextColor()
    }
    
    private func changeToNextColor() {
        let roundAlphaRed = round(redLight.alpha * 10) / 10
        let roundAlphaYellow = round(yellowLight.alpha * 10) / 10
        let roundAlphaGreen = round(greenLight.alpha * 10) / 10
        
        if roundAlphaRed == 0.3,
           roundAlphaYellow == 0.3,
           roundAlphaGreen == 0.3
        {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        } else if redLight.alpha == 1,
                  roundAlphaYellow == 0.3,
                  roundAlphaGreen == 0.3
        {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        } else if yellowLight.alpha == 1,
                  roundAlphaGreen == 0.3,
                  roundAlphaRed == 0.3
        {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1,
                  roundAlphaYellow == 0.3,
                  roundAlphaRed == 0.3
        {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
    }
}
