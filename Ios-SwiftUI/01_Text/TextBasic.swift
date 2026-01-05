//
//  Text.swift
//  Ios-SwiftUI
//
//  Created by 김민규 on 1/5/26.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1. 기본 텍스트와 폰트 크기
            Text("안녕하세요, SwiftUI!")
                .font(.title) // 제목 크기
                .fontWeight(.bold) // 굵게
            
            // 2. 색상과 밑줄
            Text("색상과 밑줄 연습")
                .foregroundColor(.blue) // 글자색 파란색
                .underline(true, color: .red) // 빨간색 밑줄
            
            // 3. 기울임과 자간 조절
            Text("기울임과 자간(Kerning) 조절")
                .italic() // 기울임
                .kerning(5) // 글자 사이 간격
            
            // 4. 여러 줄 텍스트 정렬
            Text("이 텍스트는 여러 줄로 표시되는 예시입니다. 왼쪽 정렬, 오른쪽 정렬 등을 연습할 수 있습니다.")
                .multilineTextAlignment(.center) // 가운데 정렬
                .lineLimit(2) // 최대 2줄까지만 표시 (넘치면 ...)
                .lineSpacing(10) // 줄 간격
            
            // 5. 대소문자 변환 (SwiftUI 전용)
            Text("swiftui text")
                .textCase(.uppercase) // 모두 대문자로
        }
        .padding() // 화면 가장자리에 여백 주기
    }
}

#Preview {
    TextBasic()
}
