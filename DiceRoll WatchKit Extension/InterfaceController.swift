//
//  InterfaceController.swift
//  DiceRoll WatchKit Extension
//
//  Created by Nathaniel Konkel on 9/27/15.
//  Copyright © 2015 Nathaniel Konkel. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBAction func d4ButtonClicked()
    {
        let num = rand() % 4 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d6ButtonClicked()
    {
        let num = rand() % 6 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d8ButtonClicked()
    {
        let num = rand() % 8 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d10ButtonClicked()
    {
        let num = rand() % 10 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d12ButtonClicked()
    {
        let num = rand() % 12 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d20ButtonClicked()
    {
        let num = rand() % 20 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    
    @IBAction func d100ButtonClicked()
    {
        let num = rand() % 100 + 1 //Creating the random number
        let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})//Creating the alert..
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])// Displaying the alert
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
