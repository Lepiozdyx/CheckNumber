//
//  DataManager.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import Foundation

final class DataManager: ObservableObject {
    @Published var number = Number()
    
    func computeScore() -> Int {
        let difference = abs(number.targetValue - lround(number.currentValue))
        return 100 - difference
    }
    
    func startOver() {
        number.targetValue = Int.random(in: 0...100)
        number.currentValue = 0.0
    }
}
