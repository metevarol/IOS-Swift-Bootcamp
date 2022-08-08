//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5,"Medium": 7,"Hard": 12]
    
    var timer = Timer()
    
    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
    var totalTime = 0
    
    var second2 = 0
            
    @IBOutlet weak var progressView: UIProgressView!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        let result = eggTimes[hardness]!
        
        totalTime = result * 60
        runTimer()
    }
    
    func runTimer() {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
       
        if(second2 <= totalTime){
            
            let perProg = Float(second2) / Float(totalTime)
            progressView.progress = Float(perProg)
            print(perProg)
            second2 += 1
        }
        else{
            timer.invalidate()
            titleLabel.text = "DONE"
        }
    }
    

}
