//
//  PushUp.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import Foundation

struct PushUp: Hashable {
  let amount: Int
  let time: Date
  let identifier = UUID()
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
  }
  
  static func testData() -> [PushUp] {
    return [PushUp(amount: 20, time: Date()),
            PushUp(amount: 20, time: Date()),
            PushUp(amount: 15, time: Date()),
            PushUp(amount: 15, time: Date()),
            PushUp(amount: 10, time: Date())]
  }
}

/*
 struct Workout: Hashable {
 let type: WorkoutType
 let amount: Int
 let time: Date
 let identifier = UUID()
 
 func hash(into hasher: inout Hasher) {
 hasher.combine(identifier)
 }
 
 static func testData() -> [Workout] {
 return [
 Workout(type: .pushUps, amount: 15, time: Date()),
 Workout(type: .pushUps, amount: 20, time: Date()),
 Workout(type: .pushUps, amount: 15, time: Date()),
 Workout(type: .pushUps, amount: 20, time: Date()),
 Workout(type: .pushUps, amount: 25, time: Date())
 
 ]
 }
 }
 */
