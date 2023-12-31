//
//  PushupModel.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/18/23.
//

import Foundation

struct PushupModel {
    
    //MARK: - Properties
    var workouts = Array<WorkoutReport>()
    
    //MARK: - Initalization
    
    init() {
        //NEEDS WORK: Read the workouts from storage
        workouts = []
        
        addWorkout(count: 50, day: 5, month: 9, year: 2023)
        addWorkout(count: 55, day: 7, month: 9, year: 2023)
        addWorkout(count: 61, day: 9, month: 9, year: 2023)
        addWorkout(count: 67, day: 11, month: 9, year: 2023)
        addWorkout(count: 74, day: 13, month: 9, year: 2023)
        addWorkout(count: 82, day: 15, month: 9, year: 2023)
        addWorkout(count: 40, day: 11, month: 9, year: 2022)
        
    }
    
    // MARK: - Helpers
    
    mutating func addWorkout(count:Int, day: Int, month: Int, year: Int ){
        var dateComponents = DateComponents()
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        if count > 0 {
            if let date = Calendar.current.date(from: dateComponents){
                let workout = WorkoutReport(count: count, date: date)
                
                if workouts.isDateUnique(withRespectTo: workout){
                    workouts.append(workout)
                }
            }
        }
    }
    
    // MARK: - Nested Types
    
    struct WorkoutReport: Identifiable, Dated{
        var id = UUID()
        var count = 0
        var date = Date()
    }
    
    var individualWorkouts = Array<WorkoutReport>()
}
