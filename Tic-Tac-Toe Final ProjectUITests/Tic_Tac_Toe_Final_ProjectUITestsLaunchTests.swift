//
//  Tic_Tac_Toe_Final_ProjectUITestsLaunchTests.swift
//  Tic-Tac-Toe Final ProjectUITests
//
//  Created by TYLER MOK on 12/4/23.
//

import XCTest

final class Tic_Tac_Toe_Final_ProjectUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
