//
//  BreakfastViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 4/26/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit


class BreakfastViewController: UIViewController {
    ///
    /// Omelet outlets, all will start with OMLT
    ///
    @IBAction func OMLTappear() {
        OmeletView.hidden = false
    }
    @IBOutlet weak var OMLTcheeses: UIButton!
    @IBOutlet weak var OMLTprotein: UIButton!
    @IBOutlet weak var OMLTveggies: UIButton!
    @IBOutlet weak var OMLTswitch: UISwitch!
    @IBAction func OMLTswitchAction(sender: UISwitch) {
        if OMLTswitch.on {
            OMLTwrap.hidden = false
        } else {
            OMLTwrap.hidden = true
        }
    }
    @IBOutlet weak var OMLTwrap: UIButton!
    @IBAction func OMLTaddToOrder() {
        var item = "\n3 Egg Omelet"
        item += "\n  " + OMLTcheeses.currentTitle!
        item += "\n  " + OMLTprotein.currentTitle!
        item += "\n  " + OMLTveggies.currentTitle!
        
        if OMLTveggiesTWO.hidden == false {
            item += " + " + OMLTveggiesTWO.currentTitle!
        }
        
        if OMLTveggiesTHREE.hidden == false {
            item += " + " + OMLTveggiesTHREE.currentTitle!
        }
        
        if OMLTswitch.on {
            item += "\n  in a " + OMLTwrap.currentTitle! + " wrap\n"
        }
        orderStatus.text.appendContentsOf("\n")
        orderStatus.text.appendContentsOf(OMSI.text)
        orderStatus.text.appendContentsOf(item)
    }
    
    @IBOutlet weak var OMLTveggieStepper: UIStepper!
    @IBAction func OMLTveggieStepperAction(sender: UIStepper) {
        if OMLTveggieStepper.value == 2.0 {
            OMLTveggiesTWO.hidden = false
            OMLTveggiesTHREE.hidden = true
        } else if OMLTveggieStepper.value == 1.0 {
            OMLTveggiesTWO.hidden = true
            OMLTveggiesTHREE.hidden = true
        } else if OMLTveggieStepper.value == 3.0 {
            OMLTveggiesTWO.hidden = false
            OMLTveggiesTHREE.hidden = false
        }
    }
    @IBOutlet weak var OMLTveggiesTWO: UIButton!
    @IBOutlet weak var OMLTveggiesTHREE: UIButton!
    
    
    ///
    /// A La Carte outlets, all will start with ALA
    ///
    @IBOutlet weak var EggStyleOptions: UIButton!
    @IBOutlet weak var EggStyleCount: UIButton!
    @IBOutlet weak var EggStyleStepperOutlet: UIStepper!
    @IBAction func EggStyleStepper(sender: UIStepper) {
        EggStyleCount.setTitle(String(Int(EggStyleStepperOutlet.value)), forState: UIControlState.Normal)
    }
    
    @IBOutlet weak var ToastChoicesOptions: UIButton!
    @IBOutlet weak var ToastChoicesCount: UIButton!
    @IBOutlet weak var ToastChoicesStepperOutlet: UIStepper!
    @IBAction func ToastChoicesStepper(sender: UIStepper) {
        ToastChoicesCount.setTitle(String(Int(ToastChoicesStepperOutlet.value)), forState: UIControlState.Normal)
    }
    
    @IBOutlet weak var ALAproteinChoices: UIButton!
    @IBOutlet weak var ALAproteinCount: UIButton!
    @IBOutlet weak var ALAproteinStepperOutlet: UIStepper!
    @IBAction func ALAproteinStepper(sender: UIStepper) {
        ALAproteinCount.setTitle(String(Int(ALAproteinStepperOutlet.value)), forState: UIControlState.Normal)
    }
    
    @IBOutlet weak var ALAotherChoices: UIButton!
    @IBOutlet weak var ALAotherCount: UIButton!
    @IBOutlet weak var ALAotherStepperOutlet: UIStepper!
    @IBAction func ALAotherStepper(sender: UIStepper) {
        ALAotherCount.setTitle(String(Int(ALAotherStepperOutlet.value)), forState: UIControlState.Normal)
    }

    @IBOutlet weak var ALAspecialInstructions: UITextView!
    @IBAction func ALAaddToOrder() {
        var item = "\nA La Carte"
        if Int(EggStyleCount.currentTitle!) > 0 {
            item += "\n " + EggStyleCount.currentTitle! + " Egg(s) " + EggStyleOptions.currentTitle!
        }
        if Int(ToastChoicesCount.currentTitle!) > 0 {
            item += "\n " + ToastChoicesCount.currentTitle! + " " + ToastChoicesOptions.currentTitle! + " toast"
        }
        if Int(ALAproteinCount.currentTitle!) > 0 {
            item += "\n " + ALAproteinCount.currentTitle! + " Servings of " + ALAproteinChoices.currentTitle!
        }
        if Int(ALAotherCount.currentTitle!) > 0 {
            item += "\n " + ALAotherCount.currentTitle! + " " + ALAotherChoices.currentTitle!
        }
        orderStatus.text.appendContentsOf("\n")
        orderStatus.text.appendContentsOf(ALAspecialInstructions.text)
        orderStatus.text.appendContentsOf(item + "\n")
    }
    
    @IBOutlet weak var omeletSI: UITextView!
    @IBOutlet weak var OMSI: UITextView!
    
    
    // outlets
    @IBOutlet weak var additionalEgg: UISwitch!
    
    @IBOutlet weak var breakfastSandwhich: UIButton!
    @IBOutlet weak var aLaCarte: UIButton!
    
    @IBAction func aLaCarteAppear() {
        aLaCarteView.hidden = false
        OmeletView.hidden = true
    }
    @IBAction func breakfastSandwhichAppear() {
        aLaCarteView.hidden = true
        OmeletView.hidden = true
    }
    
    @IBOutlet weak var OmeletView: UIView!
    @IBOutlet weak var aLaCarteView: UIView!
    @IBOutlet weak var breadLabel: UILabel!
    @IBOutlet weak var breadAction: UIButton!
    
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var cheeseAction: UIButton!
    
    @IBOutlet weak var proteinLabel: UILabel!
    @IBOutlet weak var proteinAction: UIButton!
    
    
    @IBOutlet weak var specialInstructions: UITextView!


    @IBOutlet weak var orderStatus: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EggStyleStepperOutlet.value = 1.0
        ToastChoicesStepperOutlet.value = 2.0
        ALAproteinStepperOutlet.value = 3.0
        ALAotherStepperOutlet.value = 0.0
        OMLTveggieStepper.value = 1.0
        OMLTveggieStepper.maximumValue = 3.0
        OMLTveggieStepper.minimumValue = 1.0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    @IBAction func enableBread() {
        print("popover change!")
        popover = "Bread"
    }
 */
    
    ///
    /// add to current order
    ///
    @IBAction func addToOrder() {
        
        var item = "\n1 Breakfast Sandwhich"
        item += "\n  " + breadAction.currentTitle!
        item += "\n  " + cheeseAction.currentTitle!
        item += "\n  " + proteinAction.currentTitle!
        
        if additionalEgg.on {
            item += "\n  with additional egg\n"
        }
        orderStatus.text.appendContentsOf("\n")
        orderStatus.text.appendContentsOf(omeletSI.text)
        orderStatus.text.appendContentsOf(item)
    }
    
    ///
    /// clears order
    ///
    @IBAction func clearOrder() {
        orderStatus.text.removeAll()
    }
    
    
    ///
    /// confirms the order (saving order for segue)
    ///
    @IBAction func confirmOrder() {
        order = orderStatus.text
    }
    /*
    func switchBreadButton(selection: String) {
        breadAction.currentTitle = selection
    }
     */
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("prepping segue")
        if segue.identifier == "breadSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "Breads"
            optionPass = breadAction
        }
        if segue.identifier == "cheeseSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "Cheeses"
            optionPass = cheeseAction
        }
        if segue.identifier == "proteinSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "Proteins"
            optionPass = proteinAction
        }
        
        if segue.identifier == "ALAeggstyleSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "ALAeggStyle"
            optionPass = EggStyleOptions
        }
        
        if segue.identifier == "ALAtoastchoicesSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "ALAtoastChoices"
            optionPass = ToastChoicesOptions
        }
        
        if segue.identifier == "ALAproteinSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "ALAprotein"
            optionPass = ALAproteinChoices
        }
        
        if segue.identifier == "ALAother" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "ALAother"
            optionPass = ALAotherChoices
        }
        
        //
        if segue.identifier == "OMLTcheeseSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTcheese"
            optionPass = OMLTcheeses
        }
        
        if segue.identifier == "OMLTproteinSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTprotein"
            optionPass = OMLTprotein
        }
        
        if segue.identifier == "OMLTveggiesSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTveggies"
            optionPass = OMLTveggies
        }
        //
        if segue.identifier == "OMLTveggiesTWOSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTveggiesTWO"
            optionPass = OMLTveggiesTWO
        }
        if segue.identifier == "OMLTveggiesTHREESegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTveggiesTHREE"
            optionPass = OMLTveggiesTHREE
        }
        
        if segue.identifier == "OMLTwrapSegue" {
            let destination = segue.destinationViewController as? BreakfastTableViewController
            destination?.viaSegue = "OMLTwrap"
            optionPass = OMLTwrap
        }
    }
    

}
