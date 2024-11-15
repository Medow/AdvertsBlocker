import Foundation

struct UserModel: Codable {
    var id: String
    var status: String
    var trialExpirationDate: Date?
    var premiumExpirationDate: Date?
    
    enum CodingKeys: String, CodingKey {
        case id
        case status
        case trialExpirationDate = "trial_expiration_date"
        case premiumExpirationDate = "premium_expiration_date"
    }
}
