//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mete Varol on 15.08.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var res : Float = 0.0
    var split : Int = 0
    var perTip : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = String(res)
        settingLabel.text = "Split between \(split) people, with \(Int(perTip * 100.0))% tip."
        
    }
    
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
