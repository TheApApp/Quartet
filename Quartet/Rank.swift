//
//  Rank.swift
//  Quartet
//
//  Created by Michael Rowe1 on 11/16/24.
//

import Foundation

struct Rank {
    var name: String
    var minimumScore: Int

    private init(name: String, minimumScore: Int) {
        self.name = name
        self.minimumScore = minimumScore
    }

    static let allRanks = [
        Rank(name: "Novice", minimumScore: 0),
        Rank(name: "Apprentice", minimumScore: 5),
        Rank(name: "Builder", minimumScore: 15),
        Rank(name: "Artisan", minimumScore: 30),
        Rank(name: "Wordsmith", minimumScore: 50),
        Rank(name: "Expert", minimumScore: 100)
    ]

    static func name(for score: Int) -> String {
        let currentRank = allRanks.last { $0.minimumScore <= score }
        return currentRank?.name ?? "Unknown"
    }

    static func progressTowardsNextRank(for score: Int) -> Double {
        var previousRankScore = 0

        for rank in allRanks {
            if score < rank.minimumScore {
                let gapFromPreviousRank = Double(score - previousRankScore)
                let gapToNextRank = Double(rank.minimumScore - previousRankScore)
                return gapFromPreviousRank / gapToNextRank
            } else {
                previousRankScore = rank.minimumScore
            }
        }

        return 1
    }
}
