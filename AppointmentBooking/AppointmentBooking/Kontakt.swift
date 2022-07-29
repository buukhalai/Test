//
//  Kontakt.swift
//  AppointmentBooking
//
//  Created by Mamadaminova Buukhalai on 3/7/22.
//

import SwiftUI

struct Kontakt: View {
    @State private var username = ""
    @State private var mail = ""
    @State private var phonenumber = ""
    @State private var text = ""
    
    var body: some View {
        VStack(alignment: .leading){
        Text("Ihre Kontaktdaten")
            .font(.largeTitle)
            Text("Bitte fülle die folgenden Felder aus!")
                .font(.title2)
                .foregroundColor(.gray)
            
            HStack {
                Image(systemName: "person.fill")
                    .font(.title2)
                TextField( "Name", text:$username)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.red))
            HStack {
                Image(systemName: "envelope.fill")
                    .font(.title2)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                TextField( "macddf@gmail.com", text:$mail)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue))
            HStack {
                Image(systemName: "phone.fill")
                    .font(.title2)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                TextField("56954568 ", text:$phonenumber)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue))
            
            ZStack {
                
                TextField("sbalrggn", text:$text)   
                    .foregroundColor(.white)
                    .padding(100)
                    .background(Color.blue)
//
//                TextEditor(text: $text)
//                    .frame(height: 250)
//                    .background(Color.blue)
                
              
            }
           
//                .foregroundColor(.white)
//                .padding(120)
//                .overlay(RoundedRectangle(cornerRadius: 20))
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}


struct Kontakt_Previews: PreviewProvider {
    static var previews: some View {
        Kontakt()
    }
}
