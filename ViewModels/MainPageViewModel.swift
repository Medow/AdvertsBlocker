import Foundation

class MainPageViewModel: ObservableObject {
    @Published var userStatus: String = "Trial"
    @Published var expiryDate: String = ""

    func fetchUserStatus() {
        NetworkManager.shared.registerDevice { result in
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self.userStatus = user.status
                    self.expiryDate = self.formatDate(user.trialExpirationDate)
                }
            case .failure(let error):
                print("Failed to fetch user status: \(error)")
            }
        }
    }

    func getTrial() {
        // Logic to register device and get trial period
    }

    func downloadConfig() {
        NetworkManager.shared.downloadConfigFile { result in
            switch result {
            case .success(let url):
                print("Config file downloaded at: \(url)")
            case .failure(let error):
                print("Failed to download config file: \(error)")
            }
        }
    }

    private func formatDate(_ date: Date?) -> String {
        guard let date = date else { return "N/A" }
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}
