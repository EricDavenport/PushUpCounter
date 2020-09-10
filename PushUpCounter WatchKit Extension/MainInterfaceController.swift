//
//  InterfaceController.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import WatchKit
import Foundation


class MainInterfaceController: WKInterfaceController {
  
  @IBOutlet weak var pushUpTable: WKInterfaceTable!
  
  @IBOutlet weak var currentInterfaceLabel: WKInterfaceLabel!
  var pushups = PushUpToo.testData()
  @IBOutlet weak var goalInterfaceLabel: WKInterfaceLabel!
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    
    if let newPushUp: PushUpToo = context as? PushUpToo {
      pushups.append(newPushUp)
    }
    
    pushUpTable.setNumberOfRows(pushups.count, withRowType: "pushUpRow")
    
    for index in 0..<pushUpTable.numberOfRows {
      guard let controller = pushUpTable.rowController(at: index) as? PushUpRowController else {
        continue
      }
      controller.pushUp = pushups[index]
    }
    
    calculateCurrent()
    
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  private func calculateCurrent() {
    var currentAmount = 0
    for each in pushups {
      currentAmount += each.amount
    }
    currentInterfaceLabel.setText("\(currentAmount)")
  }
  
}

/*
 add quick buttons - +5 + 10 etc.
 */
