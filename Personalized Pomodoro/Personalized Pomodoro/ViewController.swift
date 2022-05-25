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
    var SavedWorkTime: Int?
   
    @IBOutlet weak var pauseBTN: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var startBTN: UIButton!
    @IBOutlet weak var resetBTN: UIButton!

    

    @IBAction func StartBTN(_ sender: Any) {
        SavedWorkTime = InputWorkTime
        TimerDisplayed = InputWorkTime
        Label.text = String(TimerDisplayed)
        OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        startBTN.isHidden = true
        pauseBTN.isHidden = false
        resetBTN.isHidden = true
    }
    
    @IBAction func PauseBTN(_ sender: Any) {
        OurTimer.invalidate()
        pauseBTN.isHidden = true
        startBTN.isHidden = false
        resetBTN.isHidden = false
    }
    
    @IBAction func ResetBTN(_ sender: Any) {
        OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
        InputWorkTime = SavedWorkTime!
        startBTN.isHidden = false
    }
    
    @objc func Action(){
        TimerDisplayed -= 1
        InputWorkTime -= 1
        if TimerDisplayed <= 0{
            OurTimer.invalidate()
            Label.text = "0"
            startBTN.isHidden = true
            pauseBTN.isHidden = true
            resetBTN.isHidden = false
        }
        Label.text = String(TimerDisplayed)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBTN.isHidden = true
        // Do any additional setup after loading the view.
    }


}

