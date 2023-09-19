//
//  PushupModel.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/18/23.
//

import Foundation

struct PushupModel {
    struct WorkoutReport{
        var id = UUID()
        var count = 0
        var date = Date()
    }
    var grandTotal = 1000
    var pushupsThatCount = 500
    var individualWorkouts = Array<WorkoutReport>()
}
