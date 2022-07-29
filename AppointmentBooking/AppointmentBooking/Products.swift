//
//  Products.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 26/1/22.
//

import SwiftUI

struct Products: View {
    
    @State var item: Bool = false
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                    ForEach(SectionData) { item in
                    SectionView(section: item)
            }
            }.padding()
        }
  }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products()
    }
}

struct Sections:Identifiable {
    var id =  UUID()
    var text: String
    var image: Image
}
let SectionData = [
    Sections(text: "Physiotherapie", image: Image("physiotherapy")),
    Sections(text: "Gymnastik", image: Image("gym")),
    Sections(text: "Orthopädie", image: Image("orthopadie"))
]
