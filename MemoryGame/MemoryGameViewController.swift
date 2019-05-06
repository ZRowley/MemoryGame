//
//  MemoryGameViewController.swift
//  MemoryGame
//
//  Created by Lauren Carder on 5/1/19.
//  Copyright © 2019 Zach Rowley . All rights reserved.
//

import UIKit

class MemoryGameViewController: UIViewController {
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setBox1Colors()
    {
        let randomColor1 = Int.random(in: 0...5)
        
        if randomColor1 == 0
        {
            box1.backgroundColor = UIColor.red
        }
        if randomColor1 == 1
        {
            box1.backgroundColor = UIColor.orange
        }
        if randomColor1 == 2
        {
            box1.backgroundColor = UIColor.yellow
        }
        if randomColor1 == 3
        {
            box1.backgroundColor = UIColor.green
        }
        if randomColor1 == 4
        {
            box1.backgroundColor = UIColor.blue
        }
        if randomColor1 == 5
        {
            box1.backgroundColor = UIColor.purple
        }
    }
    
    func setBox2Colors()
    {
        let randomColor2 = Int.random(in: 0...5)
        
        if randomColor2 == 0
        {
            box2.backgroundColor = UIColor.red
        }
        if randomColor2 == 1
        {
            box2.backgroundColor = UIColor.orange
        }
        if randomColor2 == 2
        {
            box2.backgroundColor = UIColor.yellow
        }
        if randomColor2 == 3
        {
            box2.backgroundColor = UIColor.green
        }
        if randomColor2 == 4
        {
            box2.backgroundColor = UIColor.blue
        }
        if randomColor2 == 5
        {
            box2.backgroundColor = UIColor.purple
        }
    }
    
    func setBox3Colors()
    {
        let randomColor3 = Int.random(in: 0...5)
        
        if randomColor3 == 0
        {
            box3.backgroundColor = UIColor.red
        }
        if randomColor3 == 1
        {
            box3.backgroundColor = UIColor.orange
        }
        if randomColor3 == 2
        {
            box3.backgroundColor = UIColor.yellow
        }
        if randomColor3 == 3
        {
            box3.backgroundColor = UIColor.green
        }
        if randomColor3 == 4
        {
            box3.backgroundColor = UIColor.blue
        }
        if randomColor3 == 5
        {
            box3.backgroundColor = UIColor.purple
        }
    }
    
    func setBox4Colors()
    {
        let randomColor4 = Int.random(in: 0...5)
        
        if randomColor4 == 0
        {
            box4.backgroundColor = UIColor.red
        }
        if randomColor4 == 1
        {
            box4.backgroundColor = UIColor.orange
        }
        if randomColor4 == 2
        {
            box4.backgroundColor = UIColor.yellow
        }
        if randomColor4 == 3
        {
            box4.backgroundColor = UIColor.green
        }
        if randomColor4 == 4
        {
            box4.backgroundColor = UIColor.blue
        }
        if randomColor4 == 5
        {
            box4.backgroundColor = UIColor.purple
        }
    }
    
    func setBox5Colors()
    {
        let randomColor5 = Int.random(in: 0...5)
        
        if randomColor5 == 0
        {
            box5.backgroundColor = UIColor.red
        }
        if randomColor5 == 1
        {
            box5.backgroundColor = UIColor.orange
        }
        if randomColor5 == 2
        {
            box5.backgroundColor = UIColor.yellow
        }
        if randomColor5 == 3
        {
            box5.backgroundColor = UIColor.green
        }
        if randomColor5 == 4
        {
            box5.backgroundColor = UIColor.blue
        }
        if randomColor5 == 5
        {
            box5.backgroundColor = UIColor.purple
        }
    }
    
    func setBox6Colors()
    {
        let randomColor6 = Int.random(in: 0...5)
        
        if randomColor6 == 0
        {
            box6.backgroundColor = UIColor.red
        }
        if randomColor6 == 1
        {
            box6.backgroundColor = UIColor.orange
        }
        if randomColor6 == 2
        {
            box6.backgroundColor = UIColor.yellow
        }
        if randomColor6 == 3
        {
            box6.backgroundColor = UIColor.green
        }
        if randomColor6 == 4
        {
            box6.backgroundColor = UIColor.blue
        }
        if randomColor6 == 5
        {
            box6.backgroundColor = UIColor.purple
        }
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        setBox1Colors()
        setBox2Colors()
        setBox3Colors()
        setBox4Colors()
        setBox5Colors()
        setBox6Colors()
    }
    
}
