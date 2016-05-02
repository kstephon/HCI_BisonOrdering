//
//  LunchTableViewController.swift
//  BOSios
//
//  Created by Ravi Lonberg on 5/1/16.
//  Copyright © 2016 Ravi Lonberg. All rights reserved.
//

import UIKit

class LunchTableViewController: UITableViewController {

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
        default:
            workingOptions = defaults
        }
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
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    

}
