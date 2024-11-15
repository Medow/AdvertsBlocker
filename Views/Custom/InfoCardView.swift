import SwiftUI

struct InfoCardView: View {
    var title: String
    var subtitle: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.bottom, 2)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
            Divider()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}

struct InfoCardView_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardView(title: "Account Status", subtitle: "Premium")
    }
}
