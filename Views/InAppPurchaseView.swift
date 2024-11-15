import SwiftUI

struct InAppPurchaseView: View {
    @StateObject private var viewModel = InAppPurchaseViewModel()

    var body: some View {
        VStack {
            ForEach(viewModel.plans, id: \.id) { plan in
                InfoCardView(title: plan.name, subtitle: "$\(plan.price)")
                CustomButton(title: "Buy \(plan.name)", action: {
                    viewModel.purchase(plan: plan)
                })
            }
            Spacer()
        }
        .onAppear {
            viewModel.loadPlans()
        }
    }
}

struct InAppPurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        InAppPurchaseView()
    }
}
