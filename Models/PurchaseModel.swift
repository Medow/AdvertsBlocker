import Foundation

struct PurchaseModel: Codable {
    var planId: String
    var planName: String
    var duration: Int // Duration in months
    var price: Double // Price in USD
    
    enum CodingKeys: String, CodingKey {
        case planId = "plan_id"
        case planName = "plan_name"
        case duration
        case price
    }
}
