//
//  GameView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct GameView: View {
    @StateObject private var gameViewModel = GameViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
            SliderView(gameViewModel: gameViewModel, color: .red)
                .padding(.bottom, 30)
            
            Button("Test me!", action: gameViewModel.showAlert)
            .alert(
                "Your result",
                isPresented: $gameViewModel.alertIsPresented,
                actions: {}
            ) {
                Text(gameViewModel.scores)
            }
            
            Button("Restart", action: gameViewModel.reset)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
