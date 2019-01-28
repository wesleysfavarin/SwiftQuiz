//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by mac on 27/01/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var lbAnsered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnsered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
     }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    

}
