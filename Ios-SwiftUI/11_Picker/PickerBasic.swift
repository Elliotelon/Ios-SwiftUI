import SwiftUI

struct PickerBasic: View {
    @State private var selectedFruit = "Apple"
    
    let fruits = ["Apple", "Banana", "Orange"]
    
    var body: some View {
        Picker("Select Fruit", selection: $selectedFruit) {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
        }
        .padding()
    }
}



