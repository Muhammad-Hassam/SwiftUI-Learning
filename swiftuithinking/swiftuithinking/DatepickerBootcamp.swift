//
//  DatepickerBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 20/02/2025.
//

import SwiftUI

struct DatepickerBootcamp: View {
    @State var selectedDate:Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
//        formatter.dateStyle = .short
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
        VStack{
            Text("Selected Date is: ")
            Text(dateFormatter.string(from: selectedDate))
            DatePicker("Select a Date", selection: $selectedDate,
                       in: startingDate...endingDate,
                       displayedComponents: [.date]
    //                   displayedComponents: [.date,.hourAndMinute]
            )
                .foregroundColor(Color.red)
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
    //                WheelDatePickerStyle()
                )
        }
  
    }
}

#Preview {
    DatepickerBootcamp()
}
