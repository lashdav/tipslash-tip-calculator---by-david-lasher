//
//  SettingsViewController.swift
//  tipslash
//
//  Created by David Lasher on 1/13/16.
//  Copyright © 2016 David Lasher. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultTipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultTipControl.selectedSegmentIndex = defaultIndex

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDefaultChange(sender: AnyObject) {
        defaultIndex = defaultTipControl.selectedSegmentIndex
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
