//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by David Jones on 5/3/22.
//

import UIKit

class QuestionViewController: UIViewController {
        // Do any additional setup after loading the view.
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var singleStackView: UIStackView!
    var questions: [Question] = [
      Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
          Answer(text: "Steak", type: .dog),
          Answer(text: "Fish", type: .cat),
          Answer(text: "Carrots", type: .rabbit),
          Answer(text: "Corn", type: .turtle)
        ]
      ),

      Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
          Answer(text: "Swimming", type: .turtle),
          Answer(text: "Sleeping", type: .cat),
          Answer(text: "Cuddling", type: .rabbit),
          Answer(text: "Eating", type: .dog)
        ]
      ),

      Question(
        text: "How much do you enjoy car rides?",
        type: .ranged,
        answers: [
          Answer(text: "I dislike them", type: .cat),
          Answer(text: "I get a little nervous", type: .rabbit),
          Answer(text: "I barely notice them", type: .turtle),
          Answer(text: "I love them", type: .dog)
        ]
      )
    ]

    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true

        navigationItem.title = "Question #\(questionIndex + 1)"

        let currentQuestion = questions[questionIndex]

        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
}
