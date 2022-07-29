//
//  Head.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 27/1/22.
//

import SwiftUI

struct Head: View {
    var body: some View {
        VStack(alignment: .leading) {
                HStack(spacing: 150.0) {
                }
                   
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)))
                        .frame(width: 390, height: 160)
                        .cornerRadius(10)
                    VStack(spacing: 15.0) {
                        Text("Willcomen bei COPROG - Termin")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Lorem ipsum dolor sit amet, \n consetetur sadiscing elitr, sed diam \n nonumy eirmod tempor invidunt ut \n labore et dolore magna aliquam erat, \n sed diam voluptua. ")
                            .multilineTextAlignment(.center)
                        
                    }.foregroundColor(.white)
                    .font(.system(size: 17, design: .default))
                }
                .padding(.bottom)
            Text("Ausgewähle Produkte")
                .font(.system(size: 25))
                .multilineTextAlignment(.leading)
        }
    }
}

struct Head_Previews: PreviewProvider {
    static var previews: some View {
        Head()
    }
}
