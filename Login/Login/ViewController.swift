//
//  ViewController.swift
//  Login
//
//  Created by David Jones on 4/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    @IBAction func forgotUserName() {
        performSegue(withIdentifier: "loginSegue", sender: forgotUserNameButton)
    }
    @IBAction func forgotPassword() {
        performSegue(withIdentifier: "loginSegue", sender: forgotPasswordButton)
    }
}

