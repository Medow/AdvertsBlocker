import SwiftUI

struct InstallationInstructionsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Installation Instructions")
                .font(.largeTitle)
                .padding(.bottom)
            Text("1. Download the configuration file.")
            Text("2. Open the Settings app on your iOS device.")
            Text("3. Go to General > Profile.")
            Text("4. Tap on the downloaded profile and follow the prompts to install it.")
            Spacer()
        }
        .padding()
    }
}

struct InstallationInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstallationInstructionsView()
    }
}
