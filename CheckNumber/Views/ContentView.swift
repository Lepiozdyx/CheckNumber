//
//  ContentView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue = 0.0
    @State private var isPresented = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")
            SliderView(value: $currentValue, targetValue: targetValue, alpha: Float(computeScore()))
                .padding(.bottom, 30)
            
            ButtonView(title: "Проверь меня!") {
                isPresented.toggle()
            }
            .alert(
                "Ваш результат",
                isPresented: $isPresented,
                actions: {}
            ) {
                Text("\(computeScore())")
            }
            
            ButtonView(title: "Начать заново", action: startOver)
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
    private func startOver() {
        targetValue = Int.random(in: 0...100)
        currentValue = 0.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
