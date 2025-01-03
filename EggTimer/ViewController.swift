//
//  ViewController.swift
//  EggTimer
//
//  Created by 이재영 on 1/2/25.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var remaining = 0
    var timer = Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        if let hard = hardness, let eggTime = eggTimes[hard] {
            countdown(eggTime)
        }
        else {
            print("Error")
        }
    }
    
    
    func countdown(_ seconds: Int) {
        timer.invalidate()

        remaining = seconds
        print("\(remaining) seconds")

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if 0 < self.remaining {
                self.remaining -= 1
                print("\(self.remaining) seconds")
            }
            else {
                timer.invalidate()
                self.titleLabel.text = "Done!"
            }
        }
    }
    
}
