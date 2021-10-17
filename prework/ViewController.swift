//
//  ViewController.swift
//  prework
//
//  Created by Liz on 10/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmount: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var CalculateTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
    
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages=[0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmount.text = String(format:"$%.2f", tip)
        TotalLabel.text = String(format : "$%.2f", total)
        
    }

}

