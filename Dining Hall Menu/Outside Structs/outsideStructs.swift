//
//  outsideStructs.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-04-20.
//

import Foundation
import SwiftUI

struct fullWidthButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("rnsGreen"))
                    .frame(height: 45)
                    .cornerRadius(8.0)
                Text(label)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
    }
}


struct navigationButtonStandard: View {
    var destinationTitle: AnyView
    var label: String
    var bgColor: Color
    var fgColor: Color
    
    var body: some View {
        NavigationLink(destination: AnyView(destinationTitle),
                       label: {Text(label)
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(bgColor)
                        .foregroundColor(fgColor)
                        .cornerRadius(10)
                       })
    }
}

// text and emoji that pops up on start
struct mainStartingMenu: View {
    
    var menuEmoji: String
    var menuMeal: String
    var menuName: String
    
    var body: some View {
        VStack {
            Text(menuEmoji)
                .frame(width: 280, height: 275, alignment: .topLeading)
                .font(.system(size: 200))
            
            Text("Today's \(menuMeal)")
                .frame(width: 280, height: 60, alignment: .topLeading)
                .foregroundColor(Color("rnsText"))
                .font(.custom("Ubuntu-Bold", size: 40))
            
            Text(menuName)
                .frame(width: 280, height: 100, alignment: .topLeading)
                .foregroundColor(Color("rnsText"))
                .font(.custom("Oxygen-Regular", size: 28))
        }
    }
}

struct alertButton: View {
    @State private var errorMessage = false
    
    var buttonTitle: String
    var alertTitle: String
    var message: String
    var dismissionText: String
    
    var body: some View {
        Button(buttonTitle) {
            errorMessage = true
        }.alert(isPresented: $errorMessage) {
            Alert(title: Text(alertTitle), message: Text(message), dismissButton: .default(Text(dismissionText)))
        }
    }
}

// buttons for scroll bar in main screen
struct dailyViewButton: View {
    var title: String
    var variable: Bool
    
    var body: some View {
        Text(title)
            .padding()
            .foregroundColor(variable ? Color("rnsText") : Color("rnsDarkGrey"))
            .background(Color("rnsBackground"))
    }
}

// title text
struct everyTitle: View {
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .frame(height: 30)
            .foregroundColor(color)
            .font(.custom("Ubuntu-Bold", size: 32))
    }
}
