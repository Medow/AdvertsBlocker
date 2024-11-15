import XCTest
@testable import AdvertsBlockerApp

class UserModelTests: XCTestCase {

    func testUserModelInitialization() {
        let user = UserModel(id: "123", status: "Trial", trialExpirationDate: Date(), premiumExpirationDate: nil)
        XCTAssertEqual(user.id, "123")
        XCTAssertEqual(user.status, "Trial")
        XCTAssertNotNil(user.trialExpirationDate)
        XCTAssertNil(user.premiumExpirationDate)
    }
}
