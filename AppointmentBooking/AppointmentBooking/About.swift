//
//  About.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 28/1/22.
//

import SwiftUI

struct About: View {
    @Binding var showProfile: Bool
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.7480070153))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack() {
                BodyOfAbout(showProfile: $showProfile)
            }
            .padding()
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(10)
            .frame(width: 390, height: 780)
        }
    }
}
struct About_Previews: PreviewProvider {
    static var previews: some View {
        About(showProfile: .constant(false))
    }
}

struct top : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25.0) {
            Text("Allgemeine Information")
                .foregroundColor(.black)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack(spacing: 20){
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .overlay(Text("Ihr Logo")
                                .foregroundColor(.gray))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 3, x: 0, y: 0.1)
                VStack(alignment: .leading){
                    Text("Physio am Volkspark")
                        .foregroundColor(.black)
                        .font(.title3)
                    HStack(spacing: 12.0){
                        Circle()
                            .frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
                            .overlay(Image(systemName: "house").foregroundColor(.white).font(.system(size: 22)))
                        Text("Erich-Mendelsohn-Alee 4 14469 Potsam")
                            .foregroundColor(.black)
                    }
                    HStack(spacing: 12.0){
                        Circle()
                            .frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
                            .overlay(Image(systemName: "phone").foregroundColor(.white).font(.system(size: 22)))
                        Text("0331/ 951 20296")
                            .foregroundColor(.black)
                    }
                }
            }
            Text("Datezschutz")
                .foregroundColor(.black)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elirt diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquam erat, sed diam volupta. At vero eos at accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,     no sea takimata sanctus est Lorem ipsum dolor sit amet \n\n  Lorem ipsum dolor sit amet, consetetur sadipscing elirt diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquam erat, sed diam volupta. At vero eos at accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet")
                .foregroundColor(.black)
        }
    }
}

struct BodyOfAbout: View {
    @Binding var showProfile: Bool
    var body: some View {
        Button(action: {
            self.showProfile.toggle()
        }, label: {
            VStack {
                top()
                HStack {
                    PressOk(showProfile: $showProfile)
                    
                }
                .padding(.leading, 300)
            }
        })
    }
}
