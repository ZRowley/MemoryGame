//
//  ColorGameViewController.swift
//  MemoryGame
//
//  Created by Lauren Carder on 4/15/19.
//  Copyright © 2019 Zach Rowley . All rights reserved.
//

import UIKit

class ColorGameViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   func setWordColor()
   {
    let randomInt = Int.random(in: 0..<3)
    if randomInt == 0
    {
        changingColorWord = .blue
    }
    if randomInt == 1
    {
        changingColorWord = .red
    }
    if randomInt == 2
    {
        changingColorWord = .green
    }
    if randomInt == 3
    {
        changingColorWord = .yellow
    }
    }
    
    @IBAction func blueButtonPressed(_ sender: UIButton) {
    }
    @IBAction func redButtonPressed(_ sender: UIButton) {
    }
    @IBAction func greenButtonPressed(_ sender: UIButton) {
    }
    @IBAction func yellowButtonPressed(_ sender: UIButton) {
    }

}
