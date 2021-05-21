//
//  helpStructs.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-05.
//

import SwiftUI

// help page items
struct helpText: View {
    var text: String
    var textSize: CGFloat
    var bgColor: String
    var fgColor: Color
    
    var body: some View {
        Text(text)
            .font(.custom("Ubuntu-Bold", size: textSize))
            .frame(width: 250, height: 30, alignment: .leading)
            .padding()
            .background(Color(bgColor))
            .foregroundColor(fgColor)
            .cornerRadius(10)
    }
}

struct helpContentText: View {
    var title: String
    var subHeading: String
    var content: String
    
    var body: some View {
        ZStack {
            Color("rnsDarkBackground")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text(title)
                    .font(.custom("Ubuntu-Bold", size: 32))
                    .frame(width: 300, alignment: .leading)
                    .foregroundColor(Color("rnsGreen"))
                
                Spacer()
                    .frame(height: 10)
                
                Text(subHeading)
                    .font(.custom("Ubuntu-LightItalic", size: 16))
                    .frame(width: 300, alignment: .leading)
                    .foregroundColor(Color("rnsText"))
                
                Spacer()
                    .frame(height: 35)
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: true) {
                    Text(content)
                        .font(.custom("Oxygen-Regular", size: 18))
                        .padding()
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(Color("rnsText"))
                        .background(Color("rnsBackground"))
                }
                .frame(width: 300, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

struct helpContents: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: helpContentText(title: "How to: Dining Hall",
                                                        subHeading: "Your everyday survival guide for the RNS Dining Hall",
                                                        content: "‣ GET FOOD\n\nIn the Dining Hall, find the serving locations. During school hours or large events, servers are located in the kitchen area and in the center of DHall.\n\nOutside of school hours, servers are usually only located in the kitchen.\n\nIf you have specific meal requirements(such as a vegetarian meal option and not liking brocolis), don't be afraid to ask your server; they will provide them for you :)\n\nDon't forget to get a drink! Beverages around the building usually near the serving locations.\n\n\n‣ FIND A SEATING AREA\n\nSit anywhere you want however, to help the DHall staff, please sit as close to the kitchen as possible :]"),
                           label: {helpText(text: "How to: Dining Hall", textSize: 20, bgColor: "rnsGreen", fgColor: .white)
                           })
            
            Spacer()
            
            NavigationLink(destination: helpContentText(title: "Dining Hall Rules",
                                                        subHeading: "Please follow these rules in the Dining Hall",
                                                        content: ""),
                           label: {helpText(text: "Dining Hall Rules", textSize: 20, bgColor: "rnsGreen", fgColor: .white)
                           })
            
            Spacer()
        }
    }
}

struct otherContents: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: helpContentText(title: "Dining Hall Staff",
                                                        subHeading: "Meet the DHall staff! ",
                                                        content: ""),
                           label: {helpText(text: "Dining Hall Staff", textSize: 20, bgColor: "rnsGreen", fgColor: .white)
                           })
            Spacer()
            NavigationLink(destination: helpContentText(title: "About the Dining Hall",
                                                        subHeading: "Did you know? ",
                                                        content:"The Heritage Hall, or more commonly known as the Dining Hall or DHall, is a place where students and faculty of RNS have their meals."),
                           label: {helpText(text: "About the Dining Hall", textSize: 20, bgColor: "rnsGreen", fgColor: .white)
                           })
            Spacer()
            NavigationLink(destination: helpContentText(title: "The Creator & contributors of the RNS DHall Menu App",
                                                        subHeading: "Meet the creator and contributor of the app! ",
                                                        content: "Olivia Roh\nis the creator of this app."),
                           label: {helpText(text: "Creator & contributor of app", textSize: 20, bgColor: "rnsGreen", fgColor: .white)
                           })
            Spacer()
        }
    }
}
