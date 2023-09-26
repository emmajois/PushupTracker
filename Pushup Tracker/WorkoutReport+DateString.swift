//
//  WorkoutReport+DateString.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/25/23.
//

import Foundation

extension PushupModel.WorkoutReport {
    var dateString: String {
        MediumDateFormatter.shared.string(from:date)
    }
}
