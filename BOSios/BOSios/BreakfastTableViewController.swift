//
//  BreakfastTableViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 4/26/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit

class BreakfastTableViewController: UITableViewController {
    
    let breads:[String] = ["White","Wheat","Rye","Croissant","Biscuit","Bagel", "English Muffin"]
    let cheeses:[String] = ["American", "Cheddar", "Pepperjack", "Swiss", "Provolone"]
    let proteins:[String] = ["Bacon", "Ham", "Turkey", "Turkey", "Tofu", "No Protein"]
    let alaToast:[String] = ["White","Rye","Wheat","Whole Wheat","English Muffin", "Biscuit", "Bagel", "Croissant", "Whole Wheat English Muffin"]
    let alaEgg:[String] = ["Scrambled", "Sunny Side Up", "Over Easy", "Over Medium", "Over Hard"]
    let alaOther:[String] = ["Breakfast Potatoes", "French Toast", "Pancakes", "Choc. Chip Pancakes"]
    
    let omltVeggies:[String] = ["Onions", "Peppers", "Spinach", "Broccoli", "Tomatoes", "Mushrooms"]
    let omltWrap:[String] = ["White", "Wheat"]
    
    let defaults:[String] = ["option1", "option2", "option3"]
    
    var viaSegue = ""
    var workingOptions:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch viaSegue {
            case "Breads":
                workingOptions = breads
            case "Cheeses":
                workingOptions = cheeses
            case "Proteins":
                workingOptions = proteins
            case "ALAeggStyle":
                workingOptions = alaEgg
            case "ALAtoastChoices":
                workingOptions = alaToast
            case "ALAprotein":
                workingOptions = proteins
            case "ALAother":
                workingOptions = alaOther
            case "OMLTcheese":
                workingOptions = cheeses
            case "OMLTprotein":
                workingOptions = proteins
            case "OMLTveggies":
                workingOptions = omltVeggies
            case "OMLTveggiesTWO":
                workingOptions = omltVeggies
            case "OMLTveggiesTHREE":
                workingOptions = omltVeggies
            case "OMLTwrap":
                workingOptions = omltWrap
            default:
                workingOptions = defaults
        }
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workingOptions.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuse", forIndexPath: indexPath)
        cell.textLabel?.text = workingOptions[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        optionPass.setTitle(workingOptions[indexPath.row], forState: UIControlState.Normal)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
