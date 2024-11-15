import SwiftUI

struct MainPageView: View {
    @StateObject private var viewModel = MainPageViewModel()

    var body: some View {
        VStack {
            InfoCardView(title: "Account Status", subtitle: viewModel.userStatus)
            InfoCardView(title: "Expiry Date", subtitle: viewModel.expiryDate)
            CustomButton(title: "Get Trial", action: viewModel.getTrial)
            CustomButton(title: "Get Config File", action: viewModel.downloadConfig)
            Spacer()
        }
        .onAppear {
            viewModel.fetchUserStatus()
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
