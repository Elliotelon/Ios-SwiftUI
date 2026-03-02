import SwiftUI

struct SliderBasic: View {
    @State private var value: Double = 50

    var body: some View {
        VStack {
            Slider(value: $value)
            Text("값: \(value)")
        }
        .padding()
    }
}

