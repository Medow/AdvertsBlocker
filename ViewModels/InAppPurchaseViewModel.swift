import Foundation
import Firebase

class FirebaseViewModel: ObservableObject {
    @Published var notificationsEnabled: Bool = AppConfig.firebaseEnabled

    func toggleNotifications(_ isEnabled: Bool) {
        notificationsEnabled = isEnabled
        FirebaseManager.shared.toggleFirebase(isEnabled)
    }
}
