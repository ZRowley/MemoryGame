//
//  ButtonClass.swift
//  MemoryGame
//
//  Created by Zach Rowley  on 4/17/19.
//  Copyright © 2019 Zach Rowley . All rights reserved.
//

import UIKit
import Foundation

extension UIButton {
    

    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        layer.add(flash, forKey: nil)
      }
}
