//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by David Jones on 4/20/22.
//

import UIKit

class MiddleViewController: UIViewController {
    @IBOutlet weak var existingMiddleText: UILabel!
    var eventNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(<#T##animated: Bool##Bool#>)
        addEvent(from: "viewWillAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear()
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(<#T##animated: Bool##Bool#>)
    }
    
    
    func addEvent(from: String) {
        if let existingText = existingMiddleText.text {
            existingMiddleText.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
