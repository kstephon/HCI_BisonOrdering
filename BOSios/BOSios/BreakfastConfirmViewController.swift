//
//  BreakfastConfirmViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 4/26/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit

class BreakfastConfirmViewController: UIViewController {

    @IBOutlet weak var nameConfirm: UILabel!
    @IBOutlet weak var orderConfirm: UITextView!
    @IBOutlet weak var takeoutConfirm: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderConfirm.text = order
        nameConfirm.text = name
        
        if takeout {
            takeoutConfirm.text = "- for takeout -"
        } else {
            takeoutConfirm.text = "- for here -"
        }
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
