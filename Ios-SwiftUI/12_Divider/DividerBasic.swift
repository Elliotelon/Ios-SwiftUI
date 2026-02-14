import SwiftUI

struct DividerBasic: View {
    
    var body: some View {
        HStack {
            Text("왼쪽")
            Divider()
            Text("오른쪽")
        }
        
        VStack {
            Text("위 텍스트")
            Divider()
            Text("아래 텍스트")
        }
        .padding()

    }
}
