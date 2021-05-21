//
//  SessionStore.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-05-03.
//

import Foundation
import Firebase
import FirebaseAuth

struct User {
    var uid: String
    var email: String
}


class SessionStore: ObservableObject {
    @Published var session: User?
    @Published var isAnon: Bool = false
    var handle: AuthStateDidChangeListenerHandle?
    let authRef = Auth.auth()
    
    func listen() {
        handle = authRef.addStateDidChangeListener({(auth, user) in
            if let user = user {
                self.isAnon = false
                self.session =  User(uid: user.uid, email: user.email!)
            } else {
                self.isAnon = true
                self.session = nil
            }
        })
    }
    
    func signIn(email: String, password: String) {
        authRef.signIn(withEmail: email, password: password)
    }
    
    
    func signUp(email: String, password: String) {
        authRef.createUser(withEmail: email, password: password)
    }
    
    func signOut () -> Bool {
        do {
            try authRef.signOut()
            self.session = nil
            self.isAnon = true
            return true
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
            return false
        }
    }
    
    func unbind () {
        if let handle = handle {
            authRef.removeStateDidChangeListener(handle)
        }
    }
    
}
