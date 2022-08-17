//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var totalBill : Float = 0.0
    var perTip : Float = 0.0
    var split = 2
    var res : Float = 0.0
 
    
    @IBAction func tipChanged(_ sender: UIButton) {
        setFalseTipButtons()
        
        if sender.tag == 1 {
            zeroPctButton.isSelected = true
            perTip = 0
        }
        else if sender.tag == 2 {
            tenPctButton.isSelected = true
            perTip = 0.1
        }else{
            twentyPctButton.isSelected = true
            perTip = 0.2
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        split = Int(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
       // print(Int(splitNumberLabel.text!)!)
        
        totalBill = Float(billTextField.text!)!
        
        let tipAddedBill = totalBill * Float(1.0 + perTip)
        
        let result = tipAddedBill / Float(split)
        
        res = result
        
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.res = res
            destinationVC.split = split
            destinationVC.perTip = perTip
        }
    }
    
    func setFalseTipButtons(){
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
}

