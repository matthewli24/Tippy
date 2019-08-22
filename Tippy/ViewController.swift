//
//  ViewController.swift
//  Tippy
//
//  Created by Super MattMatt on 8/21/19.
//  Copyright © 2019 Tippy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
    
    @IBOutlet weak var billAmtTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount
        let bill = Double(billAmtTextField.text!) ?? 0
        
        //calculate tip and total
        let tipPrecentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPrecentages[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

