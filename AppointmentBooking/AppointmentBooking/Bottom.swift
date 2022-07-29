//
//  Top.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 27/1/22.
//

import SwiftUI

struct Bottom: View {
    var body: some View {
        VStack {
            ZStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Termin anfangen")
                        .frame(width: 360, height: 30)
                        .foregroundColor(.white).font(.title2)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8784313725, green: 0.6705882353, blue: 0.09411764706, alpha: 1)))
                        .cornerRadius(10)
                    
                })
            }
        }
    }
}

struct Top_Previews: PreviewProvider {
    static var previews: some View {
        Bottom()
    }
}
