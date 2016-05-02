//
//  ViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 4/7/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit

var order = ""
var name = ""
var takeout = false

var optionPass:UIButton = UIButton()

class ViewController: UIViewController {

    @IBOutlet weak var takeoutSwitch: UISwitch!
    @IBOutlet weak var nameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lunchSelect(sender: UIButton) {
        name = nameField.text!
        takeout = takeoutSwitch.on
    }

    @IBAction func breakfastSelect() {
        name = nameField.text!
        takeout = takeoutSwitch.on
    }
}

