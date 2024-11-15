import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("About AdvertsBlocker")
                .font(.largeTitle)
                .padding(.bottom)
            Text("Version: 1.0.0")
            Text("Developed by: Your Company Name")
            Text("Contact: support@yourcompany.com")
            Spacer()
        }
        .padding()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
