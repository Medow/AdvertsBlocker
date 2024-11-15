import SwiftUI

struct WelcomeContainerView: View {
    @State private var currentPage = 0

    var body: some View {
        VStack {
            if currentPage == 0 {
                WelcomeScreen1View()
            } else if currentPage == 1 {
                WelcomeScreen2View()
            } else if currentPage == 2 {
                WelcomeScreen3View()
            }
            HStack {
                if currentPage > 0 {
                    Button(action: {
                        currentPage -= 1
                    }) {
                        Text("Back")
                    }
                }
                Spacer()
                if currentPage < 2 {
                    Button(action: {
                        currentPage += 1
                    }) {
                        Text("Next")
                    }
                } else {
                    Button(action: {
                        // Navigate to main app
                    }) {
                        Text("Start Using Our Service")
                    }
                }
            }
            .padding()
        }
    }
}

struct WelcomeContainerView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeContainerView()
    }
}
