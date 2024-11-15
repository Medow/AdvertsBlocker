import SwiftUI

struct WelcomeScreen2View: View {
    var body: some View {
        VStack {
            Image("Feature2Icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Enhanced Privacy")
                .font(.largeTitle)
                .padding()
            Text("Keep your browsing private and secure.")
                .font(.body)
                .padding()
            Spacer()
        }
    }
}

struct WelcomeScreen2View_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen2View()
    }
}
