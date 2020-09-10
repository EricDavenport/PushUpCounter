//
//  Date+Extension.swift
//  PushUpCounter WatchKit Extension
//
//  Created by Eric Davenport on 9/10/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import Foundation

extension Date {
    func toString(givenFormat format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateAsString = dateFormatter.string(from: self)
        return dateAsString
    }
}
