//
//  TileView.swift
//  Quartet
//
//  Created by Michael Rowe1 on 11/16/24.
//

import SwiftUI

struct TileView: View {
    var text: String
    var isSelected: Bool
    var isHighlighted: Bool

    var body: some View {
        if isSelected {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: 44, maxHeight: 64)
                .hidden()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.quaternary)
                )
        } else {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: 44, maxHeight: 64)
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isHighlighted ? .clear : .gray.opacity(0.25))
                        .offset(y: 4)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(isHighlighted ? .blue : .clear, lineWidth: 2)
                )
        }
    }
}

#Preview {
    TileView(text: "abc", isSelected: false, isHighlighted: false)
}
