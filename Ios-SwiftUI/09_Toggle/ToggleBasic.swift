import SwiftUI

struct ToggleBasic: View {
    
    @State private var isOn = false
    
    var body: some View {
        Toggle("토글", isOn: $isOn)
            .padding()
    }
}

#Preview {
    ToggleBasic()
}



