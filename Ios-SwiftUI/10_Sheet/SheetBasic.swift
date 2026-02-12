import SwiftUI

struct SheetBasic: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Open Sheet") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            SheetView()
        }
    }
}

struct SheetView: View {
    var body: some View {
        VStack {
            Text("Hello from Sheet")
                .font(.title)
        }
        .padding()
    }
}


