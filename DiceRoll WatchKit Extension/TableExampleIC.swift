//
//  TableExampleIC.swift
//  DiceRoll
//
//  Created by Nathaniel Konkel on 9/30/15.
//  Copyright © 2015 Nathaniel Konkel. All rights reserved.
//

import WatchKit
import Foundation


class TableExampleIC: WKInterfaceController
{
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})
    let sides = [4,6,8,10,12,20,100]
    
    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        let labelNames = ["D4","D6","D8","D10","D12","D20","D100",]
            self.theTable .setNumberOfRows(labelNames .count, withRowType: "cell")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as!
                DiceRow
            currRow.theLabel.setText(labelNames[i])
            if (i % 1 == 0)
            {
                currRow.theImage.setImageNamed(labelNames[i] + ".jpg")
            }
        }
    }
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        let num = rand() % Int32(self.sides[rowIndex]) + 1
        self.presentAlertControllerWithTitle("Roll", message: "\(num)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
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
