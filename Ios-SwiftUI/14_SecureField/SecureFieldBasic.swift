import SwiftUI

struct SecureFieldBasic: View {
    
    @State private var password = ""
    
    var body: some View {
        VStack {
            SecureField("Enter password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Password length: \(password.count)")
        }
        .padding()
    }
    
}
