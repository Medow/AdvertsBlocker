import SwiftUI

struct WelcomeScreen1View: View {
    var body: some View {
        VStack {
            Image("Feature1Icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Welcome to AdvertsBlocker")
                .font(.largeTitle)
                .padding()
            Text("Block ads, porn, and security threats with our service.")
                .font(.body)
                .padding()
            Spacer()
        }
    }
}

struct WelcomeScreen1View_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen1View()
    }
}
