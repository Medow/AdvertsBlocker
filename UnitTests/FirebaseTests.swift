import XCTest
@testable import AdvertsBlockerApp

class FirebaseTests: XCTestCase {

    func testFirebaseConfiguration() {
        FirebaseManager.shared.configureFirebase()
        XCTAssertTrue(FirebaseApp.app() != nil)
    }

    func testToggleFirebase() {
        FirebaseManager.shared.toggleFirebase(true)
        // Add assertions to verify Firebase features are enabled
        
        FirebaseManager.shared.toggleFirebase(false)
        // Add assertions to verify Firebase features are disabled
    }
}
