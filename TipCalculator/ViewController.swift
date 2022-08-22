//
//  ViewController.swift
//  TipCalculator
//
//  Created by Hodemimon Emmanuel EDORH on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var thanksLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func caculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip  = bill  * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        thanksLabel.isEnabled = true
        
        thanksLabel.text = "Thank you for your generosity!"
        
        tipAmountLabel.text = String(format: "$ %.2f",  tip)
        
        totalAmountLabel.text = String(format: "$ %.2f", total)
        
    }
    
}

