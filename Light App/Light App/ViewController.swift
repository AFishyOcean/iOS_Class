//
//  ViewController.swift
//  Light App
//
//  Created by David Jones on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    // @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
        // if lightOn {
            // view.backgroundColor = .white
            // lightButton.setTitle("Off", for: .normal)
        // } else {
            // view.backgroundColor = .black
            // lightButton.setTitle("On", for: .normal)
        // }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

