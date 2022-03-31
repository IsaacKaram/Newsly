//
//  Date+Ext.swift
//  Newsly
//
//  Created by Isaac Karam on 30/03/22.
//

import Foundation

extension Date {
    func getDifferenceInMinutes() -> Int {
        let currentDate = Date()
        let component: Set<Calendar.Component> = [.minute]
        let difference = Calendar.current.dateComponents(component, from: self, to: currentDate)
        return difference.minute ?? 0
    }
}
