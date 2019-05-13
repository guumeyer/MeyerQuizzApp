//
//  AppDelegate.swift
//  MeyerQuizz
//
//  Created by Meyer, Gustavo on 5/9/19.
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // swiftlint:disable line_length
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let window = UIWindow(frame: UIScreen.main.bounds)

        let viewController = QuestionViewController(question: "A question?", options: ["Option 1", "Option 2"]) {
            print($0)
        }
        _ = viewController.view
        viewController.tableView.allowsMultipleSelection = true

        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()

        return true
    }
}
