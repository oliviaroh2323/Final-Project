//
//  Dining_Hall_MenuApp.swift
//  Dining Hall Menu
//
//  Created by Olivia Roh on 2021-04-18.
//

import SwiftUI
import Foundation
import UIKit
import Firebase
import FirebaseFirestore

class userViewModel: ObservableObject {
    
    @Published var brunch = [uuser]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("Brunch").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.brunch = documents.map { (queryDocumentSnapshot) -> uuser in
                let data = queryDocumentSnapshot.data()
                let title = data["title"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                return uuser(title: title, description: description)
            }
        }
    }
}

@main
struct Dining_Hall_MenuApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
