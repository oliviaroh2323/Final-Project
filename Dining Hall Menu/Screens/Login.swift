//
//  Login.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-03.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @ObservedObject var sessionSession = SessionStore()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("rnsBackground")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    everyTitle(title: "Welcome :D", color: Color("rnsText"))
                    
                    Spacer()
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Spacer()
                        .frame(height: 30)
                    
                    fullWidthButton(label: "Log in", action: {
                        sessionSession.signIn(email: email, password: password)
                    })
                    fullWidthButton(label: "Sign up", action: {
                        sessionSession.signUp(email: email, password: password)
                    })
                    
                    Spacer()
                }
                .padding(.horizontal)
                .frame(width: 300)
                .navigationBarTitle("   ")
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .preferredColorScheme(.dark)
    }
}
