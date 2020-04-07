//
//  ContentView.swift
//  MehmetErogluCard
//
//  Created by Mehmet Eroğlu on 7.04.2020.
//  Copyright © 2020 Mehmet Eroğlu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.09, green:0.63, blue:0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("mehmet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(red:0.93, green:0.94, blue:0.95), lineWidth: 5)
                )
                Text("Mehmet Eroğlu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+90 536 496 73 04", imageName: "phone.fill")
                InfoView(text: "mehmet---eroglu@hotmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
