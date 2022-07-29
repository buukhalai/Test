//
//  ProductView.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 1/2/22.
//

import SwiftUI

struct ProductView: View {
    @State var product: Bool = false
    @Binding var showProfile: Bool
    @Binding var showProduct: Bool
    var body: some View {
        ZStack { 
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.7529761905))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading) {
            Text("Produkte Wächlen")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding([.top, .leading])
                .padding(.bottom, 5)
            Text("Gruppierung 1")
                .font(.system(size: 20).bold())
                .padding([.leading, .bottom])
            ForEach(NameDate){ product in
                Forms(name: product)
            }
            Text("Gruppierung 2")
                .padding([.top, .leading])
                .font(.system(size: 20).bold())
            ForEach(NameDate2){ product in
                Forms(name: product)
            }.frame(width: 390, height: 100)
                HStack {
                    Text("Abbrechen")
                        .font(.system(size: 25).bold())
                        .foregroundColor(Color(#colorLiteral(red: 0.09411764706, green: 0.6549019608, blue: 0.8784313725, alpha: 1)))
                    Spacer()
                    PressOk(showProfile: $showProfile)
                }
                .padding([.leading, .bottom, .trailing])
           
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .cornerRadius(10)
        .padding(.top, 45)
       .frame(width: 390, height: 780)
    }
}
}
struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(showProfile: .constant(false), showProduct: .constant(false))
    }
}
struct Forms: View {
    var name: Names
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack() {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 20, height: 20)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    name.image
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        HStack() {
                            Text(name.title)
                            Spacer()
                            Text("\(name.price) ¢")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .font(.title2)
                        Text(name.text)
                    }
                }
            }
            .padding()
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 5, x: 0.001, y: 0.001)
            .padding(.horizontal)
        }
    }
}

struct Names: Identifiable {
    var id = UUID()
    var image: Image
    var title: String
    var price: Int
    var text: String
}

let NameDate = [
    Names(image: Image("pic1"), title: "Physiotherapie", price: 29, text: "Lorem ipsum dolor sit amet,\nconsetetur sadipscing elitr."),
    Names(image: Image("pic2"), title: "Gymnastik", price: 30, text: "Lorem ipsum dolor sit amet,\nconsetetur sadipscing elitr."),
    Names(image: Image("pic3"), title: "Orthopädie", price: 5, text: "Lorem ipsum dolor sit amet,\nconsetetur sadipscing elitr."),
    Names(image: Image("gym"), title: "Zahnarzt", price: 2, text: "Lorem ipsum dolor sit amet,\nconsetetur sadipscing elitr.")
]

let NameDate2 = [
    Names(image: Image("gymnastic"), title: "Gymnastik", price: 59, text: "Lorem ipsum dolor sit amet,\nconsetetur sadipscing elitr.")
]
