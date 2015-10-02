//
//  PickerExampleIC.swift
//  DiceRoll
//
//  Created by Nathaniel Konkel on 9/30/15.
//  Copyright © 2015 Nathaniel Konkel. All rights reserved.
//

import WatchKit
import Foundation


class PickerExampleIC: WKInterfaceController {
    @IBOutlet var thePicker: WKInterfacePicker!
    var currSelectedIndex = 0
    
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})
    let sides = [4,6,8,10,12,20,100]
    override func awakeWithContext(context: AnyObject?)
    {
            super.awakeWithContext(context)
            var thePickerItems = [WKPickerItem]()
            let labelNames = ["d4","d6","d8","d10","d12","d20","d100",]
            for(var i = 0; i < labelNames.count; i++)
            {
                thePickerItems.append(WKPickerItem())
                thePickerItems[i].title = "Title " + "\(i+1)"
                thePickerItems[i].contentImage = WKImage(imageName:labelNames[i] + ".jpg")
                thePickerItems[i].caption = labelNames[i]
            }
            
            self.thePicker.setItems(thePickerItems)
        
        // Configure interface objects here.
    }

    @IBAction func whichOne()
    {
        print(self.thePicker)
    }
    
    @IBAction func pickerWasClicked(value:Int)
    {
        self.currSelectedIndex = value
        self.presentAlertControllerWithTitle("Roll", message: "\(rand()%Int32(sides)+1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert]); 
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
