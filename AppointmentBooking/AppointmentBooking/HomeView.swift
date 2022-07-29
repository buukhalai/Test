//
//  HomeView.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 31/1/22.
//

import SwiftUI

struct HomeView: View {
    @Binding var show: Bool
    @State var showProfile = false
    @Binding var showProdukt: Bool
    var body: some View {
        ZStack {
            VStack(spacing: 20.0) {
               
                HStack {
                    Text("Terminbuchung")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    AvatarView(show: $show)
                }
                .padding(.horizontal)
                Head()
                Products()
                SelectDate()
                Bottom()
                
//                SectionView(section: $showProdukt)
            }
            .padding(.bottom, 80)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(show: .constant(false), showProdukt: .constant(false))
    }
}

