//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonChoiceA: UIButton!
    @IBOutlet weak var buttonChoiceB: UIButton!
    @IBOutlet weak var buttonChoiceC: UIButton!
    //@IBOutlet weak var progressBar: UIImageView!
    @IBOutlet weak var updateBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var Quiz = Brain()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotIt = Quiz.checkAnswer(userAnswer)
        
         //Angelino's Code that I got from Stack Overflow
         if userGotIt{
             sender.backgroundColor = UIColor.green
             DispatchQueue.main.asyncAfter( deadline: .now() + 0.2) {
                 sender.backgroundColor = nil
             }
         }
         else{
             sender.backgroundColor = UIColor.red
             DispatchQueue.main.asyncAfter( deadline: .now() + 0.2) {
                 sender.backgroundColor = nil
             }
         }
        Quiz.nextQuestion()
        
        updateUI()
    }
    
    
    
    func updateUI(){
        questionLabel.text = Quiz.getQuestion()
        buttonChoiceA.setTitle(Quiz.getChoicesA(), for: .normal)
        buttonChoiceB.setTitle(Quiz.getChoicesB(), for: .normal)
        buttonChoiceC.setTitle(Quiz.getChoicesC(), for: .normal)
        scoreLabel.text = "SCORE: \(Quiz.getScore())"
        updateBar.progress = Quiz.progress()
    }
}

