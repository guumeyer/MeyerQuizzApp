//
//  ResultsViewControllerTest.swift
//  MeyerQuizzTests
//
//  Created by Meyer, Gustavo on 5/9/19.
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import Foundation
@testable import MeyerQuizz
import XCTest

class ResultsViewControllerTest: XCTestCase {
    func test_viewDidLoad_rendersSummary() {
        let sut = ResultsViewController(summary: "A summary")

        _ = sut.view

        XCTAssertEqual(sut.headerLabel.text, "A summary")
    }
}
