//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Anatoliy Khramchenko on 21.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.cornerRadius = 10
        green.layer.cornerRadius = 10
        yellow.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func startFunc(_ sender: Any) {
        if (startButton.tag == 0) {
            startButton.setTitle("Next", for: .normal)
            startButton.tag = 1
            green.alpha = 1
        }
        if (startButton.tag == 1) {
            green.alpha = 0.5
            red.alpha = 1
            startButton.tag = 2
        }
        if (startButton.tag == 2) {
            red.alpha = 0.5
            yellow.alpha = 1
            startButton.tag = 3
        }
        if (startButton.tag == 1) {
            yellow.alpha = 0.5
            green.alpha = 1
            startButton.tag = 1
        }
    }
    
}

