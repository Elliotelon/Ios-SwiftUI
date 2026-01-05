//
//  LabelBasic.swift
//  Ios-SwiftUI
//
//  Created by 김민규 on 1/6/26.
//

import SwiftUI

struct LabelBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1. 기본 스타일
            Label("번개", systemImage: "bolt.fill")
            
            // 2. 색상과 폰트 적용
            Label("위험 요소", systemImage: "exclamationmark.triangle.fill")
                .font(.title)
                .foregroundColor(.red)
            
            // 3. 레이블 스타일 변경 (텍스트만 보이기 / 아이콘만 보이기)
            Label("설정", systemImage: "gearshape")
                .labelStyle(.titleOnly)// 텍스트만 표시
            
            Label("설정", systemImage: "gearshape")
                .labelStyle(.iconOnly)  // 아이콘만 표시
            
            // 4. 커스텀 이미지 사용
            Label {
                Text("커스텀 레이블")
                    .font(.headline)
                    .foregroundColor(.blue)
            } icon: {
                Circle()
                    .fill(.orange)
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
    }
}

#Preview {
    LabelBasic()
}
