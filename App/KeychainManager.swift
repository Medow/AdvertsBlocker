import KeychainAccess

class KeychainManager {
    static let shared = KeychainManager()
    private let keychain = Keychain(service: "com.advertsblocker.AdvertsBlockerApp")

    func save(key: String, value: String) {
        keychain[key] = value
    }

    func get(key: String) -> String? {
        return keychain[key]
    }
}
