//
//  ViewController.swift
//  tipCalculator
//
//  Created by Oliver San Juan on 1/16/16.
//  Copyright © 2016 Oliver San Juan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    //MARK: Class Variables
    
    //Tip Amount Labels
    @IBOutlet var tipAmountLabel: UILabel!
    @IBOutlet var tenLabel: UILabel!
    @IBOutlet var displayTen: UILabel!
    
    @IBOutlet var fifteenLabel: UILabel!
    @IBOutlet var displayFifteen: UILabel!
    
    @IBOutlet var twentyLabel: UILabel!
    @IBOutlet var displayTwenty: UILabel!
    
    @IBOutlet var twentyFiveLabel: UILabel!
    @IBOutlet var displayTwentyFive: UILabel!
    
    //Total Cost Labels
    @IBOutlet var totalCostLabel: UILabel!
    @IBOutlet var tenTotalCost: UILabel!
    @IBOutlet var fifteenTotalCost: UILabel!
    @IBOutlet var twentyTotalCost: UILabel!
    @IBOutlet var twentyFiveTotalCost: UILabel!
    
    //Text Field
    @IBOutlet var enteredAmt: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        /* Hide Labels on start */
        
        //Tip Amount Labels
        tipAmountLabel.hidden = true
        
        tenLabel.hidden = true
        displayTen.hidden = true
        
        fifteenLabel.hidden = true
        displayFifteen.hidden = true
        
        twentyLabel.hidden = true
        displayTwenty.hidden = true
        
        twentyFiveLabel.hidden = true
        displayTwentyFive.hidden = true
        
        //Total Cost labels
        totalCostLabel.hidden = true
        tenTotalCost.hidden = true
        fifteenTotalCost.hidden = true
        twentyTotalCost.hidden = true
        twentyFiveTotalCost.hidden = true
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calcButton(sender: AnyObject) {
        
        //Dismiss the keyboard
        self.view.endEditing(true)
        
        //Calculate the tips
        let amount = (enteredAmt.text! as NSString).floatValue
        
        //Display the labels
        tipAmountLabel.hidden = false
        tenLabel.hidden = false
        displayTen.hidden = false
    
        fifteenLabel.hidden = false
        displayFifteen.hidden = false
        
        twentyLabel.hidden = false
        displayTwenty.hidden = false
        
        twentyFiveLabel.hidden = false
        displayTwentyFive.hidden = false
        
        
        totalCostLabel.hidden = false
        tenTotalCost.hidden = false
        fifteenTotalCost.hidden = false
        twentyTotalCost.hidden = false
        twentyFiveTotalCost.hidden = false
        
        
        //Calculate tip amounts
        let tenPercent = amount * 0.10
        let fifteenPercent = amount * 0.15
        let twentyPercent = amount * 0.20
        let twentyFivePercent = amount * 0.25
        
        //Display tip amounts
        displayTen.text = String(format: "$%.2f", arguments: [tenPercent])
        displayFifteen.text = String(format: "$%.2f", arguments: [fifteenPercent])
        displayTwenty.text = String(format: "$%.2f", arguments: [twentyPercent])
        displayTwentyFive.text = String(format: "$%.2f", arguments: [twentyFivePercent])
        
        
        //Calculate and display total amounts
        tenTotalCost.text = String(format: "$%.2f", arguments: [tenPercent + amount])
        fifteenTotalCost.text = String(format: "$%.2f", arguments: [fifteenPercent + amount])
        twentyTotalCost.text = String(format: "$%.2f", arguments: [twentyPercent + amount])
        twentyFiveTotalCost.text = String(format: "$%.2f", arguments: [twentyFivePercent + amount])
        
        
        
        
        
    }


}

