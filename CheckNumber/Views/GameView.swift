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
            
            Button("Проверь меня!", action: gameViewModel.showAlert)
            .alert(
                "Ваш результат",
                isPresented: $gameViewModel.alertIsPresented,
                actions: {}
            ) {
                Text(gameViewModel.scores)
            }
            
            Button("Начать заново", action: gameViewModel.reset)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
