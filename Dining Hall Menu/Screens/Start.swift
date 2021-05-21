//
//  MainScreen.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-05.
//

import Foundation
import SwiftUI
import UserNotifications

struct startView: View {
    @ObservedObject private var viewModel = userViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("rnsBackground")
                    .ignoresSafeArea()
                VStack {
                    /*List(viewModel.brunch) { user in
                        VStack(alignment: .leading) {
                            Text(user.title).font(.title)
                            Text(user.description).font(.subheadline)
                        }
                    }.navigationBarTitle("Brunch")
                    .onAppear() {
                        self.viewModel.fetchData()
                    }*/
                    mainStartingMenu(menuEmoji: "🥧",
                                     menuMeal: "Lunch",
                                     menuName: "Chicken Pot Pie")
                    
                    Spacer()
                    
                    NavigationLink(destination: homeView(),
                                   label: {Text("Open Menu")
                                    .font(.custom("Ubuntu-Bold", size: 16))
                                    .frame(width: 280, height: 50)
                                    .background(Color("rnsGreen"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                                   })
                    Spacer()
                    
                }
            }
            .navigationBarTitle("   ")
        }
        .accentColor(Color("rnsText"))
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        startView()
            .preferredColorScheme(.dark)
    }
}
