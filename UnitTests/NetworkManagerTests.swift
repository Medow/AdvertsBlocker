import XCTest
@testable import AdvertsBlockerApp

class NetworkManagerTests: XCTestCase {

    func testRegisterDevice() {
        let expectation = self.expectation(description: "Register Device")
        
        NetworkManager.shared.registerDevice { result in
            switch result {
            case .success(let user):
                XCTAssertNotNil(user.id)
                XCTAssertEqual(user.status, "Trial")
            case .failure(let error):
                XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }

    func testDownloadConfigFile() {
        let expectation = self.expectation(description: "Download Config File")
        
        NetworkManager.shared.downloadConfigFile { result in
            switch result {
            case .success(let url):
                XCTAssertNotNil(url)
            case .failure(let error):
                XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
}
