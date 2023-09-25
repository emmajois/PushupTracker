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
        NavigationView {
            Form{
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
            .navigationTitle("Push-Up Tracker")
        }
    }
}

#Preview {
    PushupTrackerView(pushupViewModel: PushupViewModel())
}
