import SwiftUI

struct LazyVStackBasic: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<1000, id: \.self) { index in
                    Text("아이템 \(index)")
                        .padding()
                }
            }
        }
    }
}
