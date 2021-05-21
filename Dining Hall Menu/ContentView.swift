//
//  ContentView.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-04-18.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @ObservedObject var sessionStore = SessionStore()
    
    init() {
        sessionStore.listen()
    }
    
    var body: some View {
        startView()
        // I'll probably get rid of the login page (below) completely, but I'm still not sure if I want to.
            /*.fullScreenCover(isPresented: $sessionStore.isAnon, content: {
                Login()
            })*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
