//
//  AddPushUpIC.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit
import WatchKit

class AddPushUpIC: WKInterfaceController {
  
  @IBOutlet weak var amountTextField: WKInterfaceTextField!
  @IBOutlet weak var saveButton: WKInterfaceButton!
  
  var count: Int?
  
  @IBAction func pushUpFieldAction(_ value: NSString?) {
    guard let text = value as? String,
      let amount = Int(text) else {
        print("no amount entered")
        return
    }
    
    count = amount
    
  }
  @IBAction func test() {
    guard let amount = count else {
      print("no value")
      return
    }
    
    let deleteAction = WKAlertAction(title: "Save", style: .default) {

      DispatchQueue.main.async {
        self.dismiss()
      }
    }
    
    let cancelAction = WKAlertAction(title: "Cancel", style: .cancel) {
    }
    
    presentAlert(withTitle: "Save Push Ups",
                 message: "Add \(amount) push ups to you daily count?",
      preferredStyle: .sideBySideButtonsAlert,
                 actions: [deleteAction, cancelAction])
  }
  
  
  
  override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
    guard let amount = count else {
      print("no value")
      return nil
    }
    
    let pushUp = PushUpToo(amount: amount, time: Date())
    
    return pushUp
  }
  
  
  
}
