//
//  ContentView.swift
//  Ios-SwiftUI
//
//  Created by 김민규 on 1/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            AsyncImageBasic()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
