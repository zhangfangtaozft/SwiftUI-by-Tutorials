//
//  ContentView.swift
//  DatePickerBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        
        VStack {
            Text("Selected Date is: ")
            Text(dateFormatter.string(from: selectedDate))
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                .accentColor(.red)
            .datePickerStyle(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
