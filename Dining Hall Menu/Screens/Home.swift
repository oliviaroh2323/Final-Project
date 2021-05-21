//
//  Home.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-17.
//

import Foundation
import SwiftUI

struct homeView: View {
    @State private var isBreakfast = false
    @State private var isLunch = true
    @State private var isDinner = false
    
    @State private var isMonday = true
    @State private var isTuesday = false
    @State private var isWednesday = false
    @State private var isThursday = false
    @State private var isFriday = false
    @State private var isSaturday = false
    @State private var isSunday = false
    
    @State private var mondayClicked = true
    @State private var tuesdayClicked = false
    @State private var wednesdayClicked = false
    @State private var thursdayClicked = false
    @State private var fridayClicked = false
    @State private var saturdayClicked = false
    @State private var sundayClicked = false
    
    var body: some View {
        VStack {
            ZStack {
                Color("rnsBackground")
                    .frame(height: 282)
                    
                VStack {
                    Spacer()
                        .frame(height: 200)
                    //title
                    HStack {
                        everyTitle(title: "RNS DHall Menu", color: Color("rnsText"))
                        infoButton()
                    }
                    .frame(width: 330, alignment: .leading)
                    
                    // scroll bar start
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button {
                                self.mondayClicked.toggle()
                                if self.mondayClicked {
                                    tuesdayClicked = false
                                    wednesdayClicked = false
                                    thursdayClicked = false
                                    fridayClicked = false
                                    saturdayClicked = false
                                    sundayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Monday", variable: mondayClicked)
                            }
                            Button {
                                self.tuesdayClicked.toggle()
                                if self.tuesdayClicked {
                                    mondayClicked = false
                                    wednesdayClicked = false
                                    thursdayClicked = false
                                    fridayClicked = false
                                    saturdayClicked = false
                                    sundayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Tuesday", variable: tuesdayClicked)
                            }
                            Button {
                                self.wednesdayClicked.toggle()
                                if self.wednesdayClicked {
                                    mondayClicked = false
                                    tuesdayClicked = false
                                    thursdayClicked = false
                                    fridayClicked = false
                                    saturdayClicked = false
                                    sundayClicked = false
                                    
                                }
                            } label: {
                                dailyViewButton(title: "Wednesday", variable: wednesdayClicked)
                            }
                            Button {
                                self.thursdayClicked.toggle()
                                if self.thursdayClicked {
                                    mondayClicked = false
                                    tuesdayClicked = false
                                    wednesdayClicked = false
                                    fridayClicked = false
                                    saturdayClicked = false
                                    sundayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Thursday", variable: thursdayClicked)
                            }
                            Button {
                                self.fridayClicked.toggle()
                                if self.fridayClicked {
                                    mondayClicked = false
                                    tuesdayClicked = false
                                    wednesdayClicked = false
                                    thursdayClicked = false
                                    saturdayClicked = false
                                    sundayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Friday", variable: fridayClicked)
                            }
                            Button {
                                self.saturdayClicked.toggle()
                                if self.saturdayClicked {
                                    mondayClicked = false
                                    tuesdayClicked = false
                                    wednesdayClicked = false
                                    thursdayClicked = false
                                    fridayClicked = false
                                    sundayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Saturday", variable: saturdayClicked)
                            }
                            Button {
                                self.sundayClicked.toggle()
                                if self.sundayClicked {
                                    mondayClicked = false
                                    tuesdayClicked = false
                                    wednesdayClicked = false
                                    thursdayClicked = false
                                    fridayClicked = false
                                    saturdayClicked = false
                                }
                            } label: {
                                dailyViewButton(title: "Sunday", variable: sundayClicked)
                            }
                        }
                        .font(.custom("Ubuntu-Bold", size: 20))
                    }
                    .cornerRadius(10)
                    .font(.custom("Ubuntu-Bold", size: 20))
                    .padding()
                    // scroll bar end
                    Spacer()
                        .frame(height: 5)
                }
                .frame(height: 280, alignment: .leading)
                .ignoresSafeArea()
            }
            .toolbar {
                NavigationLink(destination: settingsView(),
                               label: {Image(systemName: "gearshape.fill")
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(Color("rnsText"))
                               })
            }
            .navigationBarTitle("   ")
            
            if mondayClicked {
                monday()
            } else if tuesdayClicked {
                tuesday()
            } else if wednesdayClicked {
                wednesday()
            } else if thursdayClicked {
                thursday()
            } else if fridayClicked {
                friday()
            } else if saturdayClicked {
                saturday()
            } else if sundayClicked {
                sunday()
            } else {
                noday()
            }
            
        }
        .frame(alignment: .center)
        .ignoresSafeArea()
    }
}

struct infoButton: View {
    var body: some View {
        NavigationLink(destination: infoView(),
                       label: {Image(systemName: "questionmark.circle.fill")
                        .font(.system(size: 25))
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(Color("rnsText"))
                       })
    }
}
