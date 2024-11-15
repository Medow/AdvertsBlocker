import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func registerDevice(completion: @escaping (Result<UserModel, Error>) -> Void) {
        // API call to register device and fetch trial period
    }
    
    func downloadConfigFile(completion: @escaping (Result<URL, Error>) -> Void) {
        // API call to download the .mobileconfig file
    }
}
