//
//  PushUpRowController.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import WatchKit

class PushUpRowController: NSObject {
  @IBOutlet var separator: WKInterfaceSeparator!
  @IBOutlet var amountLabel: WKInterfaceLabel!
  @IBOutlet var dateLabel: WKInterfaceLabel!
  
  var pushUp: PushUpToo? {
    didSet {
      guard let pushup = pushUp else { return }
      
      amountLabel.setText("Amount: \(pushup.amount)")
      dateLabel.setText("Date: \(pushup.time.toString(givenFormat: "h:mm a"))")
    }
  }
  
}
