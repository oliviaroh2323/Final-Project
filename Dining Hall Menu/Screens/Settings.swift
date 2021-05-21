//
//  Settings.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-17.
//

import Foundation
import SwiftUI

struct settingsView: View {
    var body: some View {
        ZStack {
            Color("rnsBackground")
                .ignoresSafeArea()
            VStack {
                ZStack {
                    Color("rnsGreen")
                        .frame(width: 400, height: 100, alignment: .center)
                }
                .ignoresSafeArea()
                
                everyTitle(title: "Settings", color: .white)
                    .frame(width: 300, height: 50, alignment: .topLeading)
                
                ZStack {
                    Color("rnsDarkBackground")
                        .ignoresSafeArea()
                    VStack{
                        Text("nothing available yet")
                            .font(.custom("Ubuntu-Bold", size: 20))
                            .padding()
                            .frame(width: 300, alignment: .topLeading)
                        Spacer()
                            .frame(height: 500)
                    }
                    .frame(width: 300, alignment: .topLeading)
                }
                .frame(height: 700)
            }
        }
        .navigationTitle("   ")
    }
}
