//
//  Info.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-17.
//

import Foundation
import SwiftUI

struct infoView: View {
    //let helpList = []
    
    var body: some View {
        ZStack {
            Color("rnsBackground")
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Need Help?")
                        .frame(width: 300, height: 65, alignment: .leading)
                        .foregroundColor(Color("rnsText"))
                        .font(.custom("Ubuntu-Bold", size: 32))
                    
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                        helpContents()
                    }
                    .frame(height: 150)
                    .cornerRadius(10)
                    
                    Text("Other Info")
                        .frame(width: 300, height: 65, alignment: .leading)
                        .foregroundColor(Color("rnsText"))
                        .font(.custom("Ubuntu-Bold", size: 32))
                    
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                        otherContents()
                    }
                    .cornerRadius(10)
                }
                Spacer()
                    
            }
            .navigationBarTitle("   ")
        }
    }
}
