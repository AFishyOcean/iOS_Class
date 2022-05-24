//
//  ViewController.swift
//  Traffic segways
//
//  Created by David Jones on 4/14/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if Switch.isOn {
        performSegue(withIdentifier: "Yella", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if Switch.isOn {
        performSegue(withIdentifier: "Gweeen", sender: nil)
        }
    }
}
