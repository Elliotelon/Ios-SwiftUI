//
//  Imagebasic.swift
//  Ios-SwiftUI
//
//  Created by 김민규 on 1/6/26.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1. 에셋 카탈로그 이미지
            Image("img_netflix")
                .resizable() // 필수: 크기 조절 가능하게 설정
                .aspectRatio(contentMode: .fill) // 비율 유지하며 채우기
                .frame(width: 100, height: 100)
                .clipped()

            // 2. SF Symbols (시스템 아이콘)
            Image(systemName: "heart.fill")
                .font(.system(size: 40)) // 폰트 크기로 조절
                .foregroundStyle(.red) // 2026년 표준 색상 지정 방식
        }
    }
}

#Preview {
    ImageView()
}
