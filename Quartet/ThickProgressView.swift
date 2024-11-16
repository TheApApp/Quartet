//
//  SwiftUIView.swift
//  Quartet
//
//  Created by Michael Rowe1 on 11/16/24.
//

import SwiftUI

struct ThickProgressView: View {
    var backgroundColor: Color
    var foregroundColor: Color
    var progress: Double
    var total: Double

    var body: some View {
        Capsule()
            .fill(backgroundColor)
            .padding(1)
            .overlay(
                GeometryReader { proxy in
                    Capsule()
                        .fill(foregroundColor)
                        .frame(width: proxy.size.width * progress / total)
                },
                alignment: .leading
            )
    }
}

#Preview {
    ThickProgressView(backgroundColor: .blue, foregroundColor: .white, progress: 0.5, total: 1)
}
