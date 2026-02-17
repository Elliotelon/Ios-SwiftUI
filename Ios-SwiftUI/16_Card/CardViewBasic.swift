import SwiftUI

struct CardViewBasic<Content: View>: View {
    
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let content: () -> Content
    
    init(
        backgroundColor: Color = .white,
        cornerRadius: CGFloat = 16,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.content = content
    }
    
    var body: some View {
        content()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .shadow(color: .black.opacity(0.1),
                    radius: 10,
                    x: 0,
                    y: 4)
    }
}


