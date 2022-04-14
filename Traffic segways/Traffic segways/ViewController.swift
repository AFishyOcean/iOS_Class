//
//  ViewController.swift
//  Traffic segways
//
//  Created by David Jones on 4/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Switch: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "yella", sender: nil)
    }
    
