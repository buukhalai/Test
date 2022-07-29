//
//  SelectDateView.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 1/2/22.
//

import SwiftUI

struct SelectDateView: View {
    @State var dates: Bool = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack {
                Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                    .frame(width: 380, height: 680)
                    .cornerRadius(20)
                    
                VStack(alignment: .leading, spacing: 25.0) {
                    Text("Wählen Sie Ihren Termin aus:")
                        .font(.system(size: 25).bold())
                        .padding(.trailing)
                    VStack(){
                            ForEach(dateName1){ dates in
                                DateShow(date: dates)
                            }
                        }.padding()
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
                    .cornerRadius(20)
                    
                    VStack(){
                            ForEach(dateName1){ dates in
                                DateShow(date: dates)
                            }
                        }.padding()
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
                    .cornerRadius(20)
                    VStack(){
                            ForEach(dateName1){ dates in
                                DateShow(date: dates)
                            }
                        }.padding()
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
                    .cornerRadius(20)
                    Text("Abbrechen")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .padding(.leading, 220.0)
                }
            }
        }
        
    }
}

struct DateShow: View {
    var date: dateNames
    var body: some View {
        HStack(spacing: -4.0) {
            
            Text(" ")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(11)
                .frame(width: 100, height: 54)
                .background(RoundedCorners(color: Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)), tl: 10, tr: 0, bl: 10, br: 0))
                
                .overlay(date.image)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
            Text(date.text)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .font(.title3)
                .padding(15)
                .background(RoundedCorners(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), tl: 0, tr: 10, bl: 0, br: 10))
                .frame(width: 230, height: 10)
        }
    }
}
struct SelectDateView_Previews: PreviewProvider {
    static var previews: some View {
        SelectDateView()
    }
}


struct RoundedCorner: View {
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

struct dateNames: Identifiable {
    var id = UUID()
    var image: Image
    var text: String
}

let dateName1 = [
    dateNames(image: Image(systemName: "calendar"), text:"am, 03.03.2022                          "),
    dateNames(image: Image(systemName: "clock"), text:"um, 16:30 Uhr                             ")]

let dateName2 = [
    dateNames(image: Image(systemName: "calendar"), text:"am, 03.03.2022                          "),
    dateNames(image: Image(systemName: "clock"), text:"um, 16:30 Uhr                             ")]
