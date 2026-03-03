import SwiftUI

struct DatePickerBasic: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("날짜 선택", selection: $selectedDate)
            Text("선택된 날짜: \(selectedDate.formatted())")
        }
        .padding()
    }
}

