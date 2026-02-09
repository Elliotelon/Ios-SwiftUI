import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollViewBasic()
}
