//
//  ViewController.swift
//  PreferenceDefaults
//
//  Created by cis290 on 10/23/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textFieldKeyConstant = "textFieldKeyName"
    let switchKeyConstant = "switchKeyName"

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySwitch: UISwitch!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let defaults = UserDefaults.standard
        if let textFieldValue = defaults.string(forKey:textFieldKeyConstant){
            myTextField.text = textFieldValue
        }
       print("keyname \(switchKeyConstant)")
    if (defaults.bool(forKey:switchKeyConstant)){
    mySwitch.isOn = true
    }else{
    mySwitch.isOn = false
       }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
    }
    @IBAction func myButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        print("switch is: \(mySwitch.isOn)")
        defaults.setValue(myTextField.text, forKey:textFieldKeyConstant)
        defaults.set(mySwitch.isOn, forKey:switchKeyConstant)
    }
}




