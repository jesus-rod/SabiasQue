//
//  AppDelegate.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let appeareance = UINavigationBarAppearance()
        appeareance.configureWithOpaqueBackground()
        appeareance.shadowColor = .clear
        appeareance.backgroundColor = UIColor(ColorConstants.background)

        let attrs: [NSAttributedString.Key : Any] = [
            .font: UIFont.init(name: "Lato-Bold", size: 36) ?? UIFont.monospacedSystemFont(ofSize: 36, weight: .black),
            .foregroundColor: UIColor(ColorConstants.primaryText)
        ]

        appeareance.largeTitleTextAttributes = attrs
        UINavigationBar.appearance().scrollEdgeAppearance = appeareance

        return true

    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

