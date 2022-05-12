//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by David Jones on 5/3/22.
//

import UIKit



class ResultsViewController: UIViewController {

    var responses: [Answer]
    init?(coder:NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $ 1.1 }.first!.key
    }
    
}
