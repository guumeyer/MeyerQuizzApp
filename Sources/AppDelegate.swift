//
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

//        let viewController = ResultsViewController(summary: "You got 1/2 correct", answers: [
//                PresentableAnswer(question: "Question 1", answer: "Yeah", wrongAnswer: nil),
//                PresentableAnswer(question: "Question 2", answer: "Hell yeah", wrongAnswer: "Hell not")
//            ])
        _ = viewController.view
        viewController.tableView.allowsMultipleSelection = true

        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()

        return true
    }
}
