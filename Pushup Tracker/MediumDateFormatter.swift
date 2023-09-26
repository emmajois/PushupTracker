//
//  MediumDateFormatter.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/25/23.
//

import Foundation

class MediumDateFormatter {
    static let shared = MediumDateFormatter()
    
    let dateFormatter: DateFormatter
    
    private init(){
        dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
    }
    
    func string(from date: Date) -> String {
        dateFormatter.string(from: date)
    }
}

/// alternative to using the singleton pattern
/// This unfortunately pollutes the global namespace because you're calling that function and it's visble everywhere

private let dateFormatter = {
    let formatter = DateFormatter()
    
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    
    return formatter
}()

func mediumString (from date: Date) -> String{
    dateFormatter.string(from: date)
}
