//
//  DatePickerUI.swift
//  SwiftUIBegin
//
//  Created by MP on 22.03.2024.
//

import SwiftUI

struct DatePickerUI: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date() //Если такой даты нет то датат по умолчанию.
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter ()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Current Date is \(selectedDate.description)")
                    Text(dateFormatter.string(from: selectedDate)) //Используем dateFormatter
                }
            }
            DatePicker("Select a Date", selection: $selectedDate)
                .accentColor(.red) // it's dont work
                .foregroundColor(.red)
                //.datePickerStyle(.graphical)
                //.datePickerStyle(.wheel)
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [
                //.date, // можно выбрать что показывать
                .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [
                .date])
        }
    }
}

struct DatePickerUI_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerUI()
    }
}
