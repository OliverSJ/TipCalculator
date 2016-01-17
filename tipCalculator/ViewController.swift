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
    
    //Labels
    @IBOutlet var tenLabel: UILabel!
    @IBOutlet var displayTen: UILabel!
    
    @IBOutlet var fifteenLabel: UILabel!
    @IBOutlet var displayFifteen: UILabel!
    
    @IBOutlet var twentyLabel: UILabel!
    @IBOutlet var displayTwenty: UILabel!
    
    @IBOutlet var twentyFiveLabel: UILabel!
    @IBOutlet var displayTwentyFive: UILabel!
    
    @IBOutlet var enteredAmt: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Hide the labels on start
        tenLabel.hidden = true
        displayTen.hidden = true
        
        fifteenLabel.hidden = true
        displayFifteen.hidden = true
        
        twentyLabel.hidden = true
        displayTwenty.hidden = true
        
        twentyFiveLabel.hidden = true
        displayTwentyFive.hidden = true
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calcButton(sender: AnyObject) {
        
        //Calculate the tips
        let amount = (enteredAmt.text! as NSString).floatValue
        
        //Display the labels
        tenLabel.hidden = false
        displayTen.hidden = false
    
        fifteenLabel.hidden = false
        displayFifteen.hidden = false
        
        twentyLabel.hidden = false
        displayTwenty.hidden = false
        
        twentyFiveLabel.hidden = false
        displayTwentyFive.hidden = false
        
        
        //Calculate and display
        displayTen.text = String(format: "$%.2f", arguments: [amount * 0.10])
        displayFifteen.text = String(format: "$%.2f", arguments: [amount * 0.15])
        displayTwenty.text = String(format: "$%.2f", arguments: [amount * 0.20])
        displayTwentyFive.text = String(format: "$%.2f", arguments: [amount * 0.25])
        
        
        
    }


}

