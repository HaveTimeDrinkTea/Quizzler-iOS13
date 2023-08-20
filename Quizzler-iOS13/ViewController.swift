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
    
    //PW structure to hold the questions and answers
    
    let quizArray = [
//        Question(text: "4 + 2 = 6", answer: "True"),
//        Question(text: "5 - 3 > 1", answer: "True"),
//        Question(text: "3 + 8 < 10", answer: "False"),
// using the default questions provided by App Brewer
        Question(text: "A slug's blood is green.", answer: "True"),
        Question(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
        Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        Question(text: "Google was originally called 'Backrub'.", answer: "True"),
        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
        ]
    

    //PW Var to keep track of the current question num
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle // True or False
        
// option 1
        let actualAnswer = quizArray[questionNumber].answer
        
// option 2
//        let actualQuestion = quizArray[questionNumber]
//        let actualAnswer = actualQuestion.answer
        
        
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
        questionLabel.text = quizArray[questionNumber].text
    }
    


}

