//
//  SelectDate.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 26/1/22.
//

import SwiftUI

struct SelectDate: View{
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Termin auswählen")
                .font(.system(size: 25))
            HStack(spacing: -4.0) {
                
                        Text(" ")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .padding(11)
                                    .frame(width: 100, height: 54)
                                    .background(RoundedCorners(color: Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)), tl: 10, tr: 0, bl: 10, br: 0))
                        
                        .overlay(Image(systemName: "calendar")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white))
                    Text("am, 03.03.2022                          ")
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .font(.title3)
                            .padding(15)
                        .background(RoundedCorners(color: Color(#colorLiteral(red: 0.9519885182, green: 0.9451878667, blue: 0.9571962953, alpha: 1)), tl: 0, tr: 10, bl: 0, br: 10))
                        .frame(width: 300, height: 10)
                
            }
            
            HStack(spacing: -4.0) {
                
                    Text(" ")
                        
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding(11)
                                .frame(width: 100, height: 54)
                                .background(RoundedCorners(color: Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)), tl: 10, tr: 0, bl: 10, br: 0))
                        
                        .overlay(Image(systemName: "clock")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white))
                    Text("um, 16:30 Uhr                             ")
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .font(.title3)
                            .padding(15)
                        .background(RoundedCorners(color: Color(#colorLiteral(red: 0.9533916116, green: 0.9465808272, blue: 0.958607018, alpha: 1)), tl: 0, tr: 10, bl: 0, br: 10))
                        .frame(width: 300, height: 10)
                
            }
        }
        
        
    }
        }

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}
                        
struct SelectDate_Previews: PreviewProvider {
    static var previews: some View {
        SelectDate()
    }
}
