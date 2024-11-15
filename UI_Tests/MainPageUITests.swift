import XCTest

class MainPageUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    func testMainPageElements() throws {
        let app = XCUIApplication()
        
        // Verify main page elements
        XCTAssertTrue(app.staticTexts["Account Status"].exists)
        XCTAssertTrue(app.staticTexts["Expiry Date"].exists)
        XCTAssertTrue(app.buttons["Get Trial"].exists)
        XCTAssertTrue(app.buttons["Get Config File"].exists)
    }

    func testGetTrialButton() throws {
        let app = XCUIApplication()
        
        // Tap Get Trial button and verify behavior
        let getTrialButton = app.buttons["Get Trial"]
        XCTAssertTrue(getTrialButton.exists)
        getTrialButton.tap()
        
        // Add assertions to verify the result of tapping Get Trial
    }

    func testDownloadConfigButton() throws {
        let app = XCUIApplication()
        
        // Tap Get Config File button and verify behavior
        let getConfigButton = app.buttons["Get Config File"]
        XCTAssertTrue(getConfigButton.exists)
        getConfigButton.tap()
        
        // Add assertions to verify the result of tapping Get Config File
    }
}
