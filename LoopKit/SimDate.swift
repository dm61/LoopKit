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
    
    static var date: Date = Date()
    static var launchDate: Date = Date()
    
    /* 1 min in real time = 0.1 sec in simulation */
    public static let simSampleTime: TimeInterval = 0.1
    
    public func incrementSimDate() {
        SimDate.date = SimDate.date.addingTimeInterval(60)
    }
    
    public func currentDate(timeIntervalSinceNow: TimeInterval = 0) -> Date {
        let date = SimDate.date
        return date.addingTimeInterval(timeIntervalSinceNow)
    }
    
    public func timeIntervalSinceNow(_ date: Date) -> TimeInterval {
            let timeInterval = date.timeIntervalSince(SimDate.date)
            return (timeInterval)
    }
    
    public func resetSimDate() {
        SimDate.date = Date()
        SimDate.launchDate = SimDate.date
    }
    
    public func elapsedTime() -> TimeInterval {
        let elapsedTime = SimDate.date.timeIntervalSince(SimDate.launchDate)
        return elapsedTime
    }
    
    
}
