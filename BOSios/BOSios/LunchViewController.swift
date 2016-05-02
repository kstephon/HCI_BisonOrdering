//
//  LunchViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 5/1/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit

class LunchViewController: UIViewController {

    @IBOutlet weak var SandwhichesView: UIView!
    @IBOutlet weak var AppetizersView: UIView!
    @IBOutlet weak var BurgersView: UIView!
    @IBAction func showAppetizers(sender: UIButton) {
        AppetizersView.hidden = false
        BurgersView.hidden = true
        SandwhichesView.hidden = true
    }
    @IBAction func showSandwhiches(sender: UIButton) {
        AppetizersView.hidden = true
        SandwhichesView.hidden = false
        BurgersView.hidden = true
    }
    @IBAction func showLunch(sender: UIButton) {
        AppetizersView.hidden = true
        BurgersView.hidden = false
        SandwhichesView.hidden = true
    }
    
    /// outlets for Sandwhiches
    @IBOutlet weak var SANDgrilledHamAndCheese: UISwitch!
    @IBOutlet weak var SANDgrilledTurkeyAndCheese: UISwitch!
    @IBOutlet weak var SANDgrilledTofuAndCheese: UISwitch!
    @IBOutlet weak var SANDtunaMelt: UISwitch!
    @IBOutlet weak var SANDgrilledCheese: UISwitch!
    @IBOutlet weak var SANDcheeseOptions: UIButton!
    @IBOutlet weak var SANDbreadOptions: UIButton!
    @IBOutlet weak var SANDspecialInstructions: UITextView!
    @IBAction func SANDaddToOrder(sender: UIButton) {
        var ao = ""
        if SANDgrilledHamAndCheese.on {
            ao.appendContentsOf("\n - Grilled Ham & Cheese")
        }
        if SANDgrilledTurkeyAndCheese.on {
            ao.appendContentsOf("\n - Grilled Turkey & Cheese")
        }
        
        if SANDgrilledTofuAndCheese.on {
            ao.appendContentsOf("\n - Grilled Tofu & Cheese")
        }
        
        if SANDtunaMelt.on {
            ao.appendContentsOf("\n - Tuna Melt")
        }
        
        if SANDgrilledCheese.on {
            ao.appendContentsOf("\n - Grilled Cheese")
        }
        
        if ao != "" {
            ao.appendContentsOf(" with ")
            ao.appendContentsOf(SANDcheeseOptions.currentTitle!)
            ao.appendContentsOf(" on ")
            ao.appendContentsOf(SANDbreadOptions.currentTitle!)
        }
        
        ao.appendContentsOf(BURGspecialInstructions.text)
        
        orderStatus.text.appendContentsOf(ao)
    }
    
    /// outlets for Burgers
    @IBOutlet weak var BURGburger: UISwitch!
    @IBOutlet weak var BURGveggieBurger: UISwitch!
    @IBOutlet weak var BURGportabella: UISwitch!
    @IBOutlet weak var BURGturkey: UISwitch!
    @IBOutlet weak var BURGgrilledChicken: UISwitch!
    @IBOutlet weak var BURGcrispyChicken: UISwitch!
    @IBOutlet weak var BURGcheeseOptions: UIButton!
    @IBOutlet weak var BURGbreadOptions: UIButton!
    @IBOutlet weak var BURGspecialInstructions: UITextView!
    @IBOutlet weak var BURGphilly: UISwitch!
    @IBAction func BURGaddToOrder(sender: UIButton) {
        var ao = ""
        if BURGburger.on {
            ao.appendContentsOf("\n - Hand Pressed Burger")
        }
        if BURGveggieBurger.on {
            ao.appendContentsOf("\n - Veggie Burger")
        }
        
        if BURGportabella.on {
            ao.appendContentsOf("\n - Portabella Sandwhich")
        }
        
        if BURGturkey.on {
            ao.appendContentsOf("\n - Turkey Burger")
        }
        
        if BURGgrilledChicken.on {
            ao.appendContentsOf("\n - Grilled Chicken Sandwhich")
        }
        if BURGcrispyChicken.on {
            ao.appendContentsOf("\n - Crispy Chicken Sandwhich")
        }
        
        if BURGphilly.on {
            ao.appendContentsOf("\n - Philly Cheesesteak")
        }
        
        if ao != "" {
            ao.appendContentsOf(" with ")
            ao.appendContentsOf(BURGcheeseOptions.currentTitle!)
            ao.appendContentsOf(" on ")
            ao.appendContentsOf(BURGbreadOptions.currentTitle!)
        }
        
        ao.appendContentsOf(BURGspecialInstructions.text)
        
        orderStatus.text.appendContentsOf(ao)

    }
    
    /// outlets for Apps
    @IBOutlet weak var APPStenders: UISwitch!
    @IBOutlet weak var APPSfries: UISwitch!
    @IBOutlet weak var APPSspecialfries: UISwitch!
    @IBOutlet weak var APPSonionRings: UISwitch!
    @IBOutlet weak var APPShotWings: UISwitch!
    @IBOutlet weak var APPSmotzSticks: UISwitch!
    @IBOutlet weak var APPSpoppers: UISwitch!
    @IBOutlet weak var APPSvegOfDay: UISwitch!
    @IBOutlet weak var APPSgrilledChickenBreast: UISwitch!
    @IBOutlet weak var APPSspecialInstructions: UITextView!
    @IBAction func APPSaddToOrder(sender: UIButton) {
        var ao = ""
        if APPStenders.on {
            ao.appendContentsOf("\n - Chicken Tenders")
        }
        if APPSfries.on {
            ao.appendContentsOf("\n - Fries")
        }
        
        if APPSspecialfries.on {
            ao.appendContentsOf("\n - Special Fries")
        }
        
        if APPSonionRings.on {
            ao.appendContentsOf("\n - Onion Rings")
        }
        
        if APPShotWings.on {
            ao.appendContentsOf("\n - Boneless Hot Wings")
        }
        if APPSmotzSticks.on {
            ao.appendContentsOf("\n - Mozarella Sticks")
        }
        if APPSpoppers.on {
            ao.appendContentsOf("\n - Jalapeno Poppers")
        }
        
        if APPSvegOfDay.on {
            ao.appendContentsOf("\n - Vegetable of the Day")
        }
        if APPSgrilledChickenBreast.on {
            ao.appendContentsOf("\n - Grilled Chicken Breast")
        }
        ao.appendContentsOf(APPSspecialInstructions.text)
        
        orderStatus.text.appendContentsOf(ao)
    }
    
    
    @IBAction func confirmOrder(sender: UIButton) {
        order = orderStatus.text
    }
    /// order confirm slide
    @IBOutlet weak var orderStatus: UITextView!
    @IBAction func clearOrder(sender: UIButton) {
        orderStatus.text.removeAll()
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("prepping segue")
        print(segue.identifier)
        if segue.identifier == "BurgerBread" {
            let destination = segue.destinationViewController as? LunchTableViewController
            destination?.viaSegue = "Breads"
            optionPass = BURGbreadOptions
        }
        if segue.identifier == "BurgerCheese" {
            let destination = segue.destinationViewController as? LunchTableViewController
            destination?.viaSegue = "Cheeses"
            optionPass = BURGcheeseOptions
        }
        if segue.identifier == "SandBread" {
            let destination = segue.destinationViewController as? LunchTableViewController
            destination?.viaSegue = "Breads"
            optionPass = SANDbreadOptions
        }
        
        if segue.identifier == "SandCheese" {
            let destination = segue.destinationViewController as? LunchTableViewController
            destination?.viaSegue = "Cheeses"
            optionPass = SANDcheeseOptions
        }
    }
    

}
