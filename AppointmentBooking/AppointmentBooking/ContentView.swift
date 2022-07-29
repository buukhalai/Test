//
//  ContentView.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 26/1/22.
//

import SwiftUI
struct ContentView: View {
   @State var show = false
   @State var showProfile = false
   @State var showProdukt = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9254901961, green: 0.9607843137, blue: 0.9725490196, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HomeView(show: $show, showProdukt: $showProdukt)
            
            About(showProfile: $showProfile)
                .offset(x: self.show ? 0 : screen.height)
            if showProfile{
                ContentView()
            }
            
            
            ProductView(showProfile: $showProfile, showProduct: $showProdukt)
                .offset(x: self.showProdukt ? 0 : screen.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AvatarView: View {
    @Binding var show: Bool
    var body: some View {
        Button(action: {
            
                self.show.toggle()
            
        }){
            ZStack {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color(#colorLiteral(red: 0.6352941176, green: 0.8509803922, blue: 0.937254902, alpha: 1)))
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 35, height: 35)
                .foregroundColor(.white)
                .overlay(Text("i").italic().foregroundColor(.white).font(.title))
        }
      }
   }
}
let screen = UIScreen.main.bounds
struct PressOk: View {
    @Binding var showProfile: Bool
    var body: some View{
        HStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)))
                    .overlay(Text("Ok").font(.system(size: 24)).foregroundColor(.white).bold())
        }
    }
}

struct SectionView : View {
    @State var showProdukt = false
    var section: Sections
    var body: some View {
        Button(action:
                {
                    self.showProdukt.toggle()
                }, label: {
            VStack {
                section.image
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 80, height: 80)
                Text(section.text)
                    .foregroundColor(.black)
            }
            .padding()
            .frame(width: 120, height: 120)
            
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0.001, y: 0.001)
        })
    }
}
