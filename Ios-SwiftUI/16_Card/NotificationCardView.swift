import SwiftUI

struct NotificationCardView: View {
    var body: some View {
        CardViewBasic {
            VStack(alignment: .leading, spacing: 8) {
                
                HStack {
                    Image(systemName: "bell.fill")
                        .foregroundColor(.orange)
                    
                    Text("새로운 메시지")
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("방금 전")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Text("새로운 댓글이 달렸습니다. 확인해보세요.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}


