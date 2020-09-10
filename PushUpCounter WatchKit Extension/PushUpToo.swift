//
//  PushUpToo.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import Foundation

struct PushUpToo: Hashable {
  let amount: Int
  let time: Date
  let identifier = UUID()
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
  }
  
  static func testData() -> [PushUpToo] {
    return [PushUpToo(amount: 25, time: Date()),
            PushUpToo(amount: 25, time: Date()),
            PushUpToo(amount: 20, time: Date()),
            PushUpToo(amount: 15, time: Date())]
  }
}
