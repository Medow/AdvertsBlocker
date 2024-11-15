import SwiftUI

struct AlertHelper {
    static func showAlert(title: String, message: String) -> Alert {
        return Alert(title: Text(title), message: Text(message), dismissButton: .default(Text("OK")))
    }
}
