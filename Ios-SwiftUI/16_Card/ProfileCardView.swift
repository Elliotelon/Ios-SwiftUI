import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        CardViewBasic {
            HStack(spacing: 16) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("홍길동")
                        .font(.headline)
                    
                    Text("iOS Developer")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

