//
//  menuStructs.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-05.
//

import SwiftUI

// individual menus every day in home menu
struct homeDailyBreakfast: View {
    @ObservedObject private var viewModel = userViewModel()
    var title: String
    var emoji: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .frame(width: 120, height:50, alignment: .leading)
                .font(.custom("Ubuntu-Medium", size: 22))
                .foregroundColor(Color.white)
            Spacer()
            Text(emoji)
                .frame(width: 100, height: 50, alignment: .center)
                .font(.system(size: 90))
                .ignoresSafeArea()
            Spacer()
        }
        .frame(width: 300, height: 100, alignment: .center)
        .background(Color("rnsGreen"))
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

struct homeDailyLunch: View {
    @ObservedObject private var viewModel = userViewModel()
    var title: String
    var emoji: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .frame(width: 120, height:50, alignment: .leading)
                .font(.custom("Ubuntu-Medium", size: 22))
                .foregroundColor(Color.white)
            Spacer()
            Text(emoji)
                .frame(width: 100, height: 50, alignment: .center)
                .font(.system(size: 90))
                .ignoresSafeArea()
            Spacer()
        }
        .frame(width: 300, height: 100, alignment: .center)
        .background(Color("rnsGreen"))
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

struct homeDailySupper: View {
    @ObservedObject private var viewModel = userViewModel()
    var title: String
    var emoji: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .frame(width: 120, height:50, alignment: .leading)
                .font(.custom("Ubuntu-Medium", size: 22))
                .foregroundColor(Color.white)
            Spacer()
            Text(emoji)
                .frame(width: 100, height: 50, alignment: .center)
                .font(.system(size: 90))
                .ignoresSafeArea()
            Spacer()
        }
        .frame(width: 300, height: 100, alignment: .center)
        .background(Color("rnsGreen"))
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

// 3 menus for week/weekend day in home menu
struct homeDailyWeekday: View {
    
    var breakfast: String
    var breakfastEmoji: String
    var lunch: String
    var lunchEmoji: String
    var supper: String
    var supperEmoji: String
    
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: Text("breakfast description").navigationTitle("Breakfast"),
                           label: {
                            homeDailyBreakfast(title: breakfast, emoji: breakfastEmoji)
                           })
            Spacer()
            NavigationLink(destination: Text("lunch description").navigationTitle("Lunch"),
                           label: {
                            homeDailyLunch(title: lunch, emoji: lunchEmoji)
                           })
            Spacer()
            NavigationLink(destination: Text("supper description").navigationTitle("Supper"),
                           label: {
                            homeDailySupper(title: supper, emoji: supperEmoji)
                           })
            Spacer()
        }
        .frame(width: 400, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("rnsDarkBackground"))
    }
}

struct homeDailyWeekend: View {
    var brunch: String
    var brunchEmoji: String
    var lunch: String
    var lunchEmoji: String
    var supper: String
    var supperEmoji: String
    
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: Text("Brunch").navigationTitle("Brunch"),
                           label: {
                            homeDailyBreakfast(title: brunch, emoji: brunchEmoji)
                           })
            Spacer()
            NavigationLink(destination: Text("Lunch").navigationTitle("Lunch"),
                           label: {
                            homeDailyLunch(title: lunch, emoji: lunchEmoji)
                           })
            Spacer()
            NavigationLink(destination: Text("Supper").navigationTitle("Supper"),
                           label: {
                            homeDailySupper(title: supper, emoji: supperEmoji)
                           })
            Spacer()
        }
        .frame(width: 400, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("rnsDarkBackground"))
    }
}

// menu struct for each day
struct monday: View {
    @ObservedObject private var viewModel = userViewModel()
    @State private var showingAlert = false
    
    var body: some View {
        /*ZStack {
            Color("rnsBackground")
                .ignoresSafeArea()
            List(viewModel.brunch) { user in
                 NavigationLink(destination:Text(user.description).navigationTitle("Breakfast"),
                 label: {
                 HStack {
                 Spacer()
                 Text(user.title)
                 .frame(width: 150, height:50, alignment: .center)
                 .font(.custom("Ubuntu-Medium", size: 22))
                 .foregroundColor(Color.white)
                 Spacer()
                 Text("🍕")
                 .frame(width: 100, height: 50, alignment: .center)
                 .font(.system(size: 90))
                 .ignoresSafeArea()
                 Spacer()
                 }
                 .frame(width: 300, height: 100, alignment: .center)
                 .background(Color("rnsGreen"))
                 .cornerRadius(25)
                 .shadow(radius: 5)
                 })
                Button("") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
                }
                .font(.custom("Ubuntu-Medium", size: 22))
                .foregroundColor(Color.white)
                .frame(width: 300, height: 100, alignment: .center)
                .background(Color("rnsGreen"))
                .cornerRadius(25)
                .shadow(radius: 5)
                
            }
            .frame(width: 350, alignment: .center)
            .navigationBarTitle("Brunch")
            .onAppear() {
                self.viewModel.fetchData()
            }
        }
        .frame(height: 550,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("rnsDarkBackground")) */
        homeDailyWeekday(breakfast: "Freshly Made Omelettes", breakfastEmoji: "🍳",
                         lunch: "Bowtie Pasta & Meat Sauce", lunchEmoji: "🍕",
                         supper: "Beef & Broccoli", supperEmoji: "🥦")
    }
}

struct tuesday: View {
    var body: some View {
        homeDailyWeekday(breakfast: "Freshly Made Omelettes", breakfastEmoji: "🍳",
                         lunch: "Pancakes", lunchEmoji: "🥞",
                         supper: "BBQ Chicken", supperEmoji: "🍗")
    }
}

struct wednesday: View {
    var body: some View {
        homeDailyWeekday(breakfast: "Freshly Made Omelettes", breakfastEmoji: "🍳",
                         lunch: "Chicken Bowl", lunchEmoji: "🍗",
                         supper: "Pork Roast", supperEmoji: "🍲")
    }
}

struct thursday: View {
    var body: some View {
        homeDailyWeekday(breakfast: "Freshly Made Omelettes", breakfastEmoji: "🍳",
                         lunch: "Pork Souvlaki", lunchEmoji: "🍽",
                         supper: "Roast Beef Dinner", supperEmoji: "🥩")
    }
}

struct friday: View {
    var body: some View {
        homeDailyWeekday(breakfast: "Freshly Made Omelettes", breakfastEmoji: "🍳",
                         lunch: "Chicken Pot Pie", lunchEmoji: "🥧",
                         supper: "Trout Filet", supperEmoji: "🐟")
    }
}

struct saturday: View {
    var body: some View {
        homeDailyWeekend(brunch: "Freshly Made Omelettes", brunchEmoji: "🍳",
                         lunch: "Chef's Choice", lunchEmoji: "🧑‍🍳",
                         supper: "Fried Chicken", supperEmoji: "🍗")
    }
}

struct sunday: View {
    var body: some View {
        homeDailyWeekend(brunch: "Freshly Made Omelettes", brunchEmoji: "🍳",
                         lunch: "Chef's Choice", lunchEmoji: "🧑‍🍳",
                         supper: "Pork Schnitzel", supperEmoji: "🍽")
    }
}

struct noday: View {
    var body: some View {
        Text("Select Day to View Menu")
            .frame(width: 400, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("rnsDarkBackground"))
            .font(.custom("Ubuntu-Medium", size: 22))
            .foregroundColor(Color("rnsDarkGrey"))
    }
}
