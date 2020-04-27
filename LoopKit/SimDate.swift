//
//  SimDate.swift
//  LoopKit
//
//  Created by Dragan Maksimovic on 4/24/20.
//  Copyright © 2020 LoopKit Authors. All rights reserved.
//

import Foundation

public let simDate = SimDate()

public struct SimDate {
    
    public static var date: Date = Date()
    
    /* 1 min in real time = 1 sec in simulation */
    public static let simSampleTime: TimeInterval = 1.0
    
    public func incrementSimDate() {
        SimDate.date = SimDate.date.addingTimeInterval(60 * SimDate.simSampleTime)
    }
    
    public func currentDate(timeIntervalSinceNow: TimeInterval = 0) -> Date {
        let date = SimDate.date
        return date.addingTimeInterval(timeIntervalSinceNow)
    }
    
    public func timeIntervalSinceNow(_ date: Date) -> TimeInterval {
            let timeInterval = date.timeIntervalSince(SimDate.date)
            return (timeInterval)
    }
    
}
