//
//  Date + Extensions.swift
//  Fitness_App
//
//  Created by KODDER on 15.07.2022.
//

import Foundation

extension Date {
    
    func getWeekdayNumber() -> Int {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: self)
        return weekday
    }
}
