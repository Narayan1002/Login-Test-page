//
//  Machine_TestApp.swift
//  Machine Test
//
//  Created by narayan sharma on 24/06/22.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct Machine_TestApp: App {
    @AppStorage("isOnBoarding") var change: Bool = false
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
                LoginPage()
                    .environmentObject(SignUpViewModel())
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
}
