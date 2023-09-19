//
//  PushupViewModel.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/18/23.
//

import Foundation

@Observable class PushupViewModel{
    
    // MARK: - Properties
    private var pushupData = PushupModel()
    
    // MARK: - Model access
    
    var pushupsThatCount: Int {
        pushupData.pushupsThatCount
    }
    var totalCount: Int{
        pushupData.grandTotal
    }
    
    //MARK: - User intents
    func addWorkout(date: Date, count: Int){
        //NEEDSWORK
    }
    func deleteWorkout(Id:UUID){
        //NeedsWork
    }
    func updateWorkout(id:UUID, date: Date, count: Int){
        //NEEDS Work
    }
}
