import SwiftUI

struct TextFieldBasic: View {
    
    @State private var username = ""

        var body: some View {
            TextField("이름을 입력하세요", text: $username)
                .padding()
                .textFieldStyle(.roundedBorder)
        }
}


