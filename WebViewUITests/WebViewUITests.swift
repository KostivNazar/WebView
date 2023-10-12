//
//  WebViewUITests.swift
//  WebViewUITests
//
//  Created by Nazar Kostiv on 12.10.2023.
//

import XCTest

class WebViewUITests: XCTestCase {
    override func setUp() {
        continueAfterFailure = false
    }

    func testButtonTaps() {
        let app = XCUIApplication()
        app.launch()

        let redButton = app.buttons["Red"]
        let blueButton = app.buttons["Blue"]
        let yellowButton = app.buttons["Yellow"]
        let greenButton = app.buttons["Green"]

        // Tap on the buttons
        redButton.tap()
        blueButton.tap()
        yellowButton.tap()
        greenButton.tap()
    }
}
