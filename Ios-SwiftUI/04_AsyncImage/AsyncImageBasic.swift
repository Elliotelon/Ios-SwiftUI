//
//  AsyncImageBasic.swift
//  Ios-SwiftUI
//
//  Created by 김민규 on 1/6/26.
//

import SwiftUI

struct AsyncImageBasic: View {
    // 테스트용 무료 이미지 URL (Lorem Picsum 서비스)
    let imageUrl = URL(string: "https://picsum.photos/seed/picsum/200/300")

    var body: some View {
        VStack(spacing: 20) {
            Text("AsyncImage 활용 예제")
                .font(.headline)

            // 1. AsyncImage 생성
            AsyncImage(url: imageUrl) { phase in
                switch phase {
                case .empty:
                    // [로딩 중 상태] 이미지를 다운로드 중일 때 표시됩니다.
                    ProgressView()
                        .frame(width: 300, height: 200)
                        .background(Color.gray.opacity(0.1))

                case .success(let image):
                    // [성공 상태] 다운로드 완료된 이미지를 표시합니다.
                    image
                        .resizable() // 이미지를 프레임 크기에 맞게 조절 가능하게 함
                        .aspectRatio(contentMode: .fill) // 비율을 유지하며 채움
                        .frame(width: 300, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 15)) // 모서리 둥글게
                        .shadow(radius: 5)

                case .failure(_):
                    // [실패 상태] 네트워크 오류나 잘못된 URL일 때 표시됩니다.
                    VStack {
                        Image(systemName: "wifi.exclamationmark")
                            .font(.largeTitle)
                        Text("이미지를 불러올 수 없습니다.")
                            .font(.caption)
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(15)

                @unknown default:
                    // 미래에 추가될 수 있는 새로운 상태에 대응
                    EmptyView()
                }
            }
            
            // 2. 가장 간단한 형태 (커스텀이 필요 없을 때)
            // AsyncImage(url: imageUrl)
            //     .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    AsyncImageBasic()
}
