//
//  RankView.swift
//  Quartet
//
//  Created by Michael Rowe1 on 11/16/24.
//

import SwiftUI

struct RankView: View {
    var score: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Next Rank")
                .font(.body.bold())

            ThickProgressView(
                backgroundColor: .blue.mix(with: .black, by: 0.25),
                foregroundColor: .white,
                progress: Rank.progressTowardsNextRank(for: score),
                total: 1
            )
            .frame(height: 16)
        }
    }
}

#Preview {
    RankView(score: 16)
}
