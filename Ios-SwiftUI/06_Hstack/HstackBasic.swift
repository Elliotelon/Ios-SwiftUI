import SwiftUI

struct HstackBasic: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)

            VStack(alignment: .leading) {
                Text("홍길동")
                    .bold()

                Text("iOS Developer")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()

            Button("팔로우") {
                print("Follow")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    HstackBasic()
}
