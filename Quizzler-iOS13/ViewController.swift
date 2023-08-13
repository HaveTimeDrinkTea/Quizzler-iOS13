//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Starter Code created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
// PW: to create a quiz app using the starter code from app brewery 9 Aug 2023
// This app has been changed to be tested on iPhone 14 Pro
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    //PW Array to hold the questions
    
    let quizArray = [
        ["4 + 2 = 6", "True"],
        ["5 - 3 > 1", "True"],
        ["3 + 8 < 10", "False"]
    ]
    
    // to create a structure to hold the Q&A instead
    

    //PW Var to keep track of the current question num
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizArray[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        // make sure that the questionNumber is not out of range of the questionArray
        
        if questionNumber < quizArray.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
            
        
        
        updateUI()
        
        
        
        
        
    }
    
    // function to update the question displayed
    
    func updateUI() {
        questionLabel.text = quizArray[questionNumber][0]
    }
    


}

