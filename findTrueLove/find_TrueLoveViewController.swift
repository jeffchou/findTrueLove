//
//  find_TrueLoveViewController.swift
//  findTrueLove
//
//  Created by ShihChiehChou on 10/24/16.
//  Copyright © 2016 Jeff Chou. All rights reserved.
//

import UIKit

class find_TrueLoveViewController: UIViewController {

    @IBOutlet weak var constellationTextField: UITextField!
    @IBOutlet weak var sexSegctl: UISegmentedControl!
    @IBOutlet weak var trueSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var resultSegctl: UISegmentedControl!

    @IBAction func ageSlider(_ sender: UISlider) {
        let currentAge = Int(sender.value)
        ageLabel.text = "\(currentAge)"
    }
    
    @IBAction func findTrueLove(_ sender: AnyObject) {
        let constellation = constellationTextField.text!
        let sex = sexSegctl.selectedSegmentIndex
        let trueLove = trueSwitch.isOn
        let age:Int! = Int(ageLabel.text!)
        resultSegctl.isHidden = false
        
        if constellation == "Aries" && sex == 1 && trueLove && age <= 35 && age >= 26
        {
            resultSegctl.selectedSegmentIndex = 0
        }
        else
        {
            resultSegctl.selectedSegmentIndex = 1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
