//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by mac on 27/01/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    let quizManager = QuizManager()
    
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAnwers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
        }) { (success) in
            self.showResults()
        }
        
        getNewQuiz()
    }

    @IBAction func selectAnswer(_ sender: UIButton) {
    
        let index = btAnwers.index(of: sender)!
        quizManager.validateAnswer(index: index)
       getNewQuiz()
    }
    
    func getNewQuiz(){
         quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = btAnwers[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewcontroller = segue.destination as! ResultViewController
        resultViewcontroller.totalAnswers = quizManager.totalAnswers
        resultViewcontroller.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }
    
    

}
