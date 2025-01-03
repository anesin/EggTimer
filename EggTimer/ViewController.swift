//
//  ViewController.swift
//  EggTimer
//
//  Created by 이재영 on 1/2/25.
//

import UIKit


class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
    }
    
}

