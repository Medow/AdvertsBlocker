import Foundation

struct PurchasePlan {
    let id: String
    let name: String
    let duration: Int // Duration in months
    let price: Double // Price in USD

    static let plans: [PurchasePlan] = [
        PurchasePlan(id: "com.advertsblocker.AdvertsBlockerApp.premium.1month", name: "1 Month", duration: 1, price: 4.99),
        PurchasePlan(id: "com.advertsblocker.AdvertsBlockerApp.premium.3months", name: "3 Months", duration: 3, price: 12.99),
        PurchasePlan(id: "com.advertsblocker.AdvertsBlockerApp.premium.6months", name: "6 Months", duration: 6, price: 19.99)
    ]
}
