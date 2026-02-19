import SwiftUI

struct AlertBasic: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("알림 표시") {
            showAlert = true
        }
        .alert("안녕하세요 👋",
               isPresented: $showAlert) {
            Button("확인", role: .cancel) { }
        } message: {
            Text("이것은 기본 Alert입니다.")
        }
    }
}
