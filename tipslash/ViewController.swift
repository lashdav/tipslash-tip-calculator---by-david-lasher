//
//  ViewController.swift
//  tipslash
//
//   
//
//  Created by David Lasher on 1/6/16.
//  Copyright © 2016 David Lasher. All rights reserved.
//

import UIKit
var defaultIndex = 1

class ViewController: UIViewController {

    @IBOutlet weak var settingsButtonLabel: UIButton!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var tipDefaultControl: UISegmentedControl!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        tipControl.selectedSegmentIndex = defaultIndex
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
       
        //tipControl.selectedSegmentIndex = defaultIndex
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
       // let tipPercentage = tipPercentages[1]
        
       // println("User edited bill")
        //var billAmount = billField.text.bridgeToObjectiveC().doubleValue
        let billAmount = Double(billField.text!)
        if (billAmount != nil){
            let tip = billAmount! * tipPercentage
            let total = billAmount! + tip
            tipLabel.text = "$\(tip)"
            totalLabel.text = "$\(total)"
            
            totalLabel.text = String(format: "$%.2f", total)
            tipLabel.text = String(format: "$%.2f", tip)
        }
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func onTapSettings(sender: AnyObject) {
        
        /* Used this when Settings was on same page
        if(tipDefaultControl.hidden){
            tipDefaultControl.hidden = false
            settingsLabel.hidden = false
            settingsButtonLabel.setTitle("Hide Settings", forState: UIControlState.Normal)
        } else {
            tipDefaultControl.hidden = true
            settingsLabel.hidden = true
            settingsButtonLabel.setTitle("Show Settings", forState: UIControlState.Normal)
        }*/
        
        
    }

   /* Used this when Settings was on the same view
    @IBAction func onDefaultTipChange(sender: AnyObject) {
        tipControl.selectedSegmentIndex = tipDefaultControl.selectedSegmentIndex
        view.endEditing(true)
        
    }*/
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        tipControl.selectedSegmentIndex = defaultIndex
        onEditingChange(self)
    }
}

