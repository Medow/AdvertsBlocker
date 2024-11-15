import SwiftUI

struct WelcomeScreen3View: View {
    var body: some View {
        VStack {
            Image("Feature3Icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Easy Setup")
                .font(.largeTitle)
                .padding()
            Text("Get started with just a few taps.")
                .font(.body)
                .padding()
            Spacer()
        }
    }
}

struct WelcomeScreen3View_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen3View()
    }
}

