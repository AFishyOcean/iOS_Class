//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by David Jones on 2/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This app rocks!"
    }
    

}

