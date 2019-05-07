//
//  ColorGameViewController.swift
//  MemoryGame
//
//  Created by Lauren Carder on 4/15/19.
//  Copyright © 2019 Zach Rowley . All rights reserved.
//

import UIKit

class ColorGameViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var changingColorWord: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    @objc func UpdateTimer() {
        time = time + 1.0
        timerLabel.text = String(format: "%.1f", time)
    }
    var rightScore = 0
    var wrongScore = 0
    var gameOver = false
    var time = 0.0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        gameOver = true
    }
    
    func resetGame () {
        rightScore = 0
        wrongScore = 0
        gameOver = false
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
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        setWordText()
        setWordColor()
        changingColorWord.alpha = 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
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
    
    func winGame() {
        if time == 10.0{
            youWin(message: "You Win!!")
        }
    }
}
