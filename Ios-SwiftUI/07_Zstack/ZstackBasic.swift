import SwiftUI

struct ZstackBasic: View {

    var body: some View {

        ZStack {
            // ✅ 화면 전체 배경
            Color.gray.opacity(0.15)
                .ignoresSafeArea()

            // ✅ 카드
            ZStack(alignment: .bottomLeading) {

                // 🔥 이미지 + 전용 배경
                ZStack {
                    Color.black
                    Image(systemName: "photo.on.rectangle.angled")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray.opacity(0.7))
                        .padding(40)
                }
                .frame(height: 220)
                .clipped()

                VStack(alignment: .leading, spacing: 4) {
                    Text("오늘의 추천 장소")
                        .font(.headline)
                        .foregroundColor(.white)

                    Text("서울 · 카페")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding()
            }
            .cornerRadius(16)
            .shadow(radius: 6)
            .padding()
        }
    }
}

#Preview {
    ZstackBasic()
}
