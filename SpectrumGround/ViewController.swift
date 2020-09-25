//
//  ViewController.swift
//  SpectrumGround
//
//  Created by Tiger Coder on 9/23/20.
//  Copyright © 2020 clc.hehn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bgColors = [UIColor.systemRed, UIColor.systemPink, UIColor.systemPurple, UIColor.systemBlue, UIColor.systemTeal, UIColor.systemGreen, UIColor.systemYellow, UIColor.systemOrange]
    
    var bgControl = 0
    var backGround : UIColor = UIColor.systemBlue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backGround = self.view.backgroundColor!
        
        self.spectrumGround(ogBack: backGround)
                   
    }
    
    func stopSpectrum(_ sender: UIButton){
        bgControl = 1
        self.view.backgroundColor = backGround
    }

    func spectrumGround(ogBack : UIColor) -> Void {
        while (bgControl == 0) {
            for color in bgColors {
                UIView.animate(withDuration: 1, animations: { () -> Void in self.view.backgroundColor = color})
            }
        }
    }
}
