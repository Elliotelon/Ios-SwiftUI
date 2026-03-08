import SwiftUI

struct NavigationStackBasic: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Apple") {
                    Text("Apple Detail")
                }
                
                NavigationLink("Banana") {
                    Text("Banana Detail")
                }
            }
            .navigationTitle("Fruits")
        }
    }
}
