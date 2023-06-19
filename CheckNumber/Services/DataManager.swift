//
//  DataManager.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import Foundation

final class DataManager: ObservableObject {
    @Published var data = Data()
    
    func computeScore() -> Int {
        let difference = abs(data.targetValue - lround(data.currentValue))
        return 100 - difference
    }
    
    func startOver() {
        data.targetValue = Int.random(in: 0...100)
        data.currentValue = 0.0
    }
}
