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
        
    }

    
    @IBAction func tappedButton() {
    }
    
}

