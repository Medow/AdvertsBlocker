import XCTest

class WelcomeScreenUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    func testWelcomeScreensFlow() throws {
        let app = XCUIApplication()
        
        // Verify first welcome screen
        XCTAssertTrue(app.staticTexts["Welcome to AdvertsBlocker"].exists)
        app.buttons["Next"].tap()
        
        // Verify second welcome screen
        XCTAssertTrue(app.staticTexts["Enhanced Privacy"].exists)
        app.buttons["Next"].tap()
        
        // Verify third welcome screen
        XCTAssertTrue(app.staticTexts["Easy Setup"].exists)
        app.buttons["Start Using Our Service"].tap()
        
        // Verify navigation to main page
        XCTAssertTrue(app.staticTexts["Account Status"].exists)
    }
}
