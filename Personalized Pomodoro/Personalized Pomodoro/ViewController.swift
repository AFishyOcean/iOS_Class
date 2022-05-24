//
//  ViewController.swift
//  Personalized Pomodoro
//
//  Created by David Jones on 5/18/22.
//

import UIKit

class ViewController: UIViewController {

    var OurTimer = Timer()
    var TimerDisplayed = 0
    var InputWorkTime = 10
    
    @IBOutlet weak var Label: UILabel!
    

    @IBAction func StartBTN(_ sender: Any) {
        TimerDisplayed = InputWorkTime
        Label.text = String(TimerDisplayed)
        OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        StartBTN
    }
    
    @IBAction func PauseBTN(_ sender: Any) {
        OurTimer.invalidate()
    }
    
    @IBAction func ResetBTN(_ sender: Any) {
        OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
    }
    
    @objc func Action(){
        TimerDisplayed -= 1
        if TimerDisplayed <= 0{
            OurTimer.invalidate()
            Label.text = "0"
        }
        Label.text = String(TimerDisplayed)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

