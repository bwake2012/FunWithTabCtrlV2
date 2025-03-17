// FunWithTabCtrlV2UITestsLaunchTests.swift
//
// Created by Bob Wakefield on 3/16/25.
// for FunWithTabCtrlV2
//
// Using Swift 6.0
// Running on macOS 15.3
//
// 
//

import XCTest

final class FunWithTabCtrlV2UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
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
