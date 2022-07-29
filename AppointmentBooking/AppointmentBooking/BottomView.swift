//
//  BottomView.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 2/2/22.
//

import SwiftUI

struct BottomView: View {
    @State var UserName = ""
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.7497608419))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text("Ihre Notiz")
                    .font(.system(size: 30, weight: .medium))
                    .padding(.top)
                    
                Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et earebum. Stet clita kasd gudergren, no sea tekimata sanctus est Lorem ipsum dolor sit amet. ")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical)
                TextField("Hier schreiben...", text: $UserName)
                    .font(.system(size: 20, weight: .semibold, design: .rounded)) .padding(.horizontal, 20)
                    .padding(.bottom, 240)
                    .frame(width: 340, height: 300)
                    .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                HStack {
                    Text("Abbrechen")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                    Spacer()
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .overlay(Text("Ok").font(.system(size: 24)).foregroundColor(.white).bold())
                    
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            } .padding()
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(10)
           .frame(width: 380, height: 780)
        }
        
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BottomView()
            BottomView()
        }
    }
}
 
