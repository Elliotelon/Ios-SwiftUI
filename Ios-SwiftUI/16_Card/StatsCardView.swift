import SwiftUI

struct StatsCardView: View {
    var body: some View {
        CardViewBasic(backgroundColor: Color.blue.opacity(0.1)) {
            HStack {
                VStack(alignment: .leading) {
                    Text("총 방문자")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("12,450")
                        .font(.title)
                        .bold()
                }
                
                Spacer()
                
                Image(systemName: "chart.bar.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal)
    }
}


