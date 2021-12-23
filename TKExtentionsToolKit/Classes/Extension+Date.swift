//
//  Extension+Date.swift
//  myBoy
//
//  Created by Marc Felden on 24/02/2019.
//  Copyright © 2019 Marc Felden. All rights reserved.
//

import Foundation


public extension Date {
    
    init(fromYYYYMMDD string:String) {
        let df = DateFormatter()
        df.calendar = Calendar(identifier: .gregorian)
        df.dateFormat = "yyyy-MM-dd"
        self = df.date(from: string)!
    }
    
    var timeIntervalSecondsSince1970:Int {
        let ti = Int(self.timeIntervalSince1970)
        return ti
    }
    
    
    
    var todayYMD:String {
        let today = self
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd"
        df.calendar = Calendar(identifier: .gregorian)
        let date = df.string(from: today)
        return date
    }
    var todayHHMM:String {
        let today = self
        let df = DateFormatter()
        df.calendar = Calendar(identifier: .gregorian)
        df.dateFormat = "HH:mm"
        let date = df.string(from: today)
        return date
    }
    var toYYYMMDD:String {
        let today = self
        let df = DateFormatter()
        df.calendar = Calendar(identifier: .gregorian)
        df.dateFormat = "yyyy-MM-dd"
        let date = df.string(from: today)
        return date
    }
    
    var toYYYMMDDforUTC:String {
        let today = self
        let df = DateFormatter()
        df.calendar = Calendar(identifier: .gregorian)
        df.timeZone = TimeZone(abbreviation: "UTC")
        df.dateFormat = "yyyy-MM-dd"
        let date = df.string(from: today)
        return date
    }
    
    static func age(fromDob dob: Date) -> Int {
        let now = Date()
        let birthday: Date = dob
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthday, to: now)
        let age = ageComponents.year!
        return age
    }
    
}
