import SwiftUI
// SwiftUI 프레임워크를 불러온다
// SwiftUI의 View, VStack, Text, Image, Button 등을 사용하기 위해 필수

struct VstackBasic: View {
    // 화면(UI)을 구성하는 하나의 View를 정의
    // SwiftUI에서 화면은 struct + View 프로토콜로 만든다

    var body: some View {
        // body는 이 View가 실제로 화면에 어떻게 보일지를 정의하는 곳
        // "some View"는 여러 View를 조합해서 하나의 View처럼 반환한다는 의미

        VStack(spacing: 16) {
            // VStack: 내부 요소들을 "세로 방향"으로 쌓는다
            // spacing: 각 요소 사이의 간격을 16pt로 설정

            Image(systemName: "person.circle.fill")
                // SF Symbols에 포함된 시스템 아이콘 사용
                // "person.circle.fill" → 사람 프로필 아이콘

                .resizable()
                // 이미지 크기를 frame으로 조절할 수 있도록 설정
                // 없으면 원래 크기로만 표시됨

                .frame(width: 80, height: 80)
                // 이미지의 가로, 세로 크기를 80pt로 지정

                .foregroundColor(.blue)
                // 이미지 색상을 파란색으로 변경
                // SF Symbol이라 색상 변경 가능

            Text("홍길동")
                // 화면에 문자열을 표시하는 텍스트 뷰

                .font(.title2)
                // 텍스트 크기를 title2 스타일로 설정

                .bold()
                // 글자를 굵게 표시

            Text("iOS Developer")
                // 직업 또는 설명 텍스트

                .foregroundColor(.gray)
                // 텍스트 색상을 회색으로 설정

            Button("팔로우") {
                // 사용자가 누를 수 있는 버튼
                // "팔로우"는 버튼에 표시될 텍스트

                print("Follow")
                // 버튼을 눌렀을 때 콘솔에 "Follow" 출력
                // 실제 앱에서는 서버 요청이나 상태 변경이 들어감
            }
            .buttonStyle(.borderedProminent)
            // iOS 기본 강조 버튼 스타일
            // 배경색이 들어가고 눈에 잘 띄는 버튼
        }
        .padding()
        // VStack 전체에 기본 여백을 추가
        // 화면 가장자리에 너무 붙지 않게 만들어줌
    }
}

#Preview {
    // Xcode 미리보기용 코드 (iOS 17+)
    // 실제 앱 실행 없이 UI를 바로 확인할 수 있음

    VstackBasic()
    // 위에서 만든 View를 미리보기에 표시
}


