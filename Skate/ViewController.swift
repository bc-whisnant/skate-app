//
//  ViewController.swift
//  Skate
//
//  Created by Galvatron on 10/9/18.
//  Copyright © 2018 Galvatron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex: Int = 0
    
    var tricks = ["Kickflip", "Heelflip", "360 Flip", "Hardflip", "Varial Heelflip", "Pop Shove It", "360 Shove It", "Backside Flip", "Frontside Flip", "Backside Bigspin","Frontside Bigspin","Laser Flip","Backside 180","Frontside 180","Backside 360","Frontside 360","Frontside Half Cab","Half Cab","Fakie Bigspin","Frontside Half Cab Flip","Half Cab Flip","Nollie","Nollie Frontside 180","Nollie Backside 180","Nollie Backside Flip","Nollie Frontside Flip","Nollie Heelfllip","Nollie Backside Heelflip","Nollie Frontside Heelflip","Nollie Backside Bigspin","Nollie Big Heel","Nollie Cab","Nollie Backside 360","Fakie Bigspin","Fakie Big Flip","Full Cab","Cab Flip","Switch Flip","Switch Heelflip","Switch 360 Flip","Switch Hardflip","Switch Varial Heelflip","Switch Backside Flip","Switch Frontside Flip","Switch Backside Bigspin","Switch Frontside Bigspin","Switch Backside 180","Switch Frontside 180","Switch Big Flip","Switch Backside Heelflip","Switch Frontside Heelflip","Backside Heelflip","Frontside Heelflip"]


    
    @IBOutlet weak var trickLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func getTrickButtonPressed(_ sender: UIButton) {
        generateRandomTrick()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateRandomTrick()
    }
    func generateRandomTrick() {
       randomIndex = Int.random(in: 0 ... 52)
        
        let randomTrick = tricks[randomIndex]
        
        trickLabel.text = randomTrick
        trickLabel.isHidden = false
        
    
    }
    
}

