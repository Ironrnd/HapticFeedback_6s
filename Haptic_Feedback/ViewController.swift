//
//  ViewController.swift
//  Haptic_Feedback
//
//  Created by Andrew Belozerov on 06.11.16.
//  Copyright © 2016 Andrew Belozerov. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var peek: UIButton!
    @IBOutlet weak var pop: UIButton!
    @IBOutlet weak var nope: UIButton!
    
    private func designFor(button: UIButton) {
        button.layer.cornerRadius = 8
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.6
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designFor(button: peek)
        designFor(button: pop)
        designFor(button: nope)
   }
    
    @IBAction func peekHandler(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1519)
    }
    
    @IBAction func popHandler(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1520)
    }
    
    @IBAction func nopeHandler(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1521)
    }
}

