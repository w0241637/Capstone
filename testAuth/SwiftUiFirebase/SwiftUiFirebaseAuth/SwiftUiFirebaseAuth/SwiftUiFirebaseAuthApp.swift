//
//  SwiftUiFirebaseAuthApp.swift
//  SwiftUiFirebaseAuth
//
//  Created by Tim Mailman on 2022-02-01.
//

import SwiftUI
import Firebase

@main
struct SwiftUiFirebaseAuthApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegateAdaptor{

    }
    
}
