//
//  ColorGameViewController.swift
//  MemoryGame
//
//  Created by Lauren Carder on 4/15/19.
//  Copyright © 2019 Zach Rowley . All rights reserved.
//

import UIKit

class ColorGameViewController: UIViewController {
    
    @IBOutlet weak var deleteDirectionsButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var deleteStartButton: UIButton!
    @IBOutlet weak var changingColorWord: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    @objc func UpdateTimer() {
        time += 1
        timerLabel.text = "\(time)"
        
        if time >= 10 {
            timer.invalidate()
            time = 0
            timerLabel.alpha = 0
            changingColorWord.alpha = 0
            deleteStartButton.alpha = 1
            youWin(message: "You Loose!!")
        }
    }
    var rightScore = 0 {
        didSet {
            if rightScore == 10 {
                timer.invalidate()
                timerLabel.alpha = 0
                changingColorWord.alpha = 0
                deleteStartButton.alpha = 1
                youWin(message: "You Win!!")
            }
        }
    }
    
    var wrongScore = 0 {
        didSet {
            if wrongScore == 5 {
                timer.invalidate()
                timerLabel.alpha = 0
                changingColorWord.alpha = 0
                deleteStartButton.alpha = 1
                youWin(message: "You Loose!!")
            }
        }
    }
    
    var time = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.alpha = 0
        changingColorWord.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    func youWin(message: String){
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Reset", style: .default) {
            (action) in
            self.resetGame()
        }
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    func resetGame () {
        rightScore = 0
        rightLabel.text = String(rightScore)
        wrongScore = 0
        wrongLabel.text = String(wrongScore)
    }
    
    func setWordText()
    {
        let randomInt = Int.random(in: 0...3)
        if randomInt == 0
        {
            changingColorWord.text = "BLUE"
        }
        if randomInt == 1
        {
            changingColorWord.text = "RED"
        }
        if randomInt == 2
        {
            changingColorWord.text = "GREEN"
        }
        if randomInt == 3
        {
            changingColorWord.text = "YELLOW"
        }
    }
    
    func setWordColor()
    {
        let wordColorRandomInt = Int.random(in: 0...3)
        if wordColorRandomInt == 0
        {
            changingColorWord.textColor = UIColor.red
        }
        if wordColorRandomInt == 1
        {
            changingColorWord.textColor = UIColor.blue
        }
        if wordColorRandomInt == 2
        {
            changingColorWord.textColor = UIColor.green
        }
        if wordColorRandomInt == 3
        {
            changingColorWord.textColor = UIColor.yellow
        }
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        setWordText()
        setWordColor()
        changingColorWord.alpha = 1
        deleteStartButton.alpha = 0
        timerLabel.alpha = 1
        startTimer()
        time = 0
    }
    
    @IBAction func blueButtonPressed(_ sender: Any) {
        if changingColorWord.textColor == UIColor.blue
        {
            rightScore += 1
            rightLabel.text = String(rightScore)
        }
        else
        {
            wrongScore += 1
            wrongLabel.text = String(wrongScore)
        }
        setWordText()
        setWordColor()
    }
    
    func timeAction(){
        time += 1
        timerLabel.text = String(time)
    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        if changingColorWord.textColor == UIColor.red
        {
            rightScore += 1
            rightLabel.text = String(rightScore)
        }
        else
        {
            wrongScore += 1
            wrongLabel.text = String(wrongScore)
        }
        setWordText()
        setWordColor()
    }
    
    
    @IBAction func greenButtonPressed(_ sender: Any) {
        if changingColorWord.textColor == UIColor.green
        {
            rightScore += 1
            rightLabel.text = String(rightScore)
        }
        else
        {
            wrongScore += 1
            wrongLabel.text = String(wrongScore)
        }
        setWordText()
        setWordColor()
    }
    
    @IBAction func yellowButtonPressed(_ sender: Any) {
        if changingColorWord.textColor == UIColor.yellow
        {
            rightScore += 1
            rightLabel.text = String(rightScore)
        }
        else
        {
            wrongScore += 1
            wrongLabel.text = String(wrongScore)
        }
        setWordText()
        setWordColor()
    }
    
}
