//
//  ViewController.swift
//  EggTimer
//
//  Created by 이재영 on 1/2/25.
//

import UIKit


class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        if let hard = hardness, let eggTime = eggTimes[hard] {
            print("\(eggTime)")
        }
        else {
            print("Error")
        }
    }
    
}

