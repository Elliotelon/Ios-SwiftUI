import SwiftUI

struct StepperBasic: View {
    @State private var quantity = 1
    
    var body: some View {
        VStack {
            Stepper("수량: \(quantity)", value: $quantity)
        }
        .padding()
    }
}
