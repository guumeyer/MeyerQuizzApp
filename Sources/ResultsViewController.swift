//
//  ResultsViewController.swift
//  MeyerQuizz
//
//  Created by Meyer, Gustavo on 5/9/19.
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import Foundation
import UIKit

final class ResultsViewController: UIViewController {
    @IBOutlet weak var headerLabel: UILabel!

    private var summary = ""

    convenience init(summary: String) {
        self.init()

        self.summary = summary
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        headerLabel.text = summary
    }
}
