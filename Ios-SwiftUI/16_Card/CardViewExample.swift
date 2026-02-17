import SwiftUI

struct CardViewExample: View {
    var body: some View {
        CardViewBasic {
            VStack(alignment: .leading, spacing: 8) {
                Text("카드 제목")
                    .font(.headline)
                
                Text("카드 설명입니다. 공통 카드 컴포넌트 예제입니다.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}


