import Foundation

struct NotificationModel: Codable {
    var id: String
    var title: String
    var body: String
    var date: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case body
        case date
    }
}
