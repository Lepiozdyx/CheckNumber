//
//  SliderView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    @ObservedObject var gameViewModel: GameViewModel
    var color: UIColor
    
    var body: some View {
        VStack(spacing: 30) {
            let targetValue = gameViewModel.gameOptions.targetValue
            Text("Move the slider as close as possible to: \(targetValue)")
            HStack {
                Text("0")
                UISliderRepresentation(
                    value: $gameViewModel.gameOptions.currentValue,
                    alpha: gameViewModel.alpha,
                    color: color
                )
                Text("100")
            }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(gameViewModel: GameViewModel(), color: .red)
    }
}
