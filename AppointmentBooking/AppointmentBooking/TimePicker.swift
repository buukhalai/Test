//
//  TimePicker.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 4/7/22.
//

import SwiftUI

struct TimePicker: View {
    @State private var date = Date()
    var body: some View {
        VStack{
        DatePicker("Birthday", selection: $date)
            //.datePickerStyle(.graphical)
            .frame(width: 320)
    }
    }
}

struct TimePicker_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker()
    }
}
