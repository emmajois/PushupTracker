//
//  ContentView.swift
//  Pushup Tracker
//
//  Created by IS 543 on 9/18/23.
//

import SwiftUI

struct PushupTrackerView: View {
    
    var pushupViewModel: PushupViewModel
    
    var body: some View {
        NavigationStack {
            Form{
                totalsSection
                workoutsSection
            }
            .navigationTitle("Push-Up Tracker")
        }
    }
    
    var totalsSection: some View{
        Section {
            HStack{
                Text("Grand total push-ups:")
                    .bold()
                Spacer()
                Text("\(pushupViewModel.totalCount)")
            }
            HStack{
                Text("Push-ups that count for Kyle:")
                    .bold()
                Spacer()
                Text("\(pushupViewModel.pushupsThatCount)")
            }
            Button {
                /// NEEDSWORK: report the total
            } label: {
                Label("Report", systemImage: "square.and.arrow.up")
            }
        }
    }
    
    var workoutsSection: some View {
        Section(header: Text("Individual Workeouts")){
            if pushupViewModel.workouts.isEmpty{
                Button {
                    //needs work
                } label: {
                    Label("Add your first workout", systemImage: "plus.circle")
                }
                
            } else{
                List{
                    ForEach(pushupViewModel.workouts){ workout in
                        HStack{
                            Text(workout.dateString)
                            Spacer()
                            Text("\(workout.count)")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PushupTrackerView(pushupViewModel: PushupViewModel())
}
