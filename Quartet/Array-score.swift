//
//  Array-score.swift
//  Quartet
//
//  Created by Michael Rowe1 on 11/16/24.
//

import Foundation

extension Array {
    var score: Int {
        Int(pow(2, Double(count - 1)))
    }
}
