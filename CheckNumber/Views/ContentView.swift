//
//  ContentView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var dataManager = DataManager()
    @State private var isPresented = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Подвиньте слайдер как можно ближе к: \(dataManager.number.targetValue)")
            SliderView(value: $dataManager.number.currentValue, dataManager: dataManager)
                .padding(.bottom, 30)
            
            ButtonView(title: "Проверь меня!") {
                isPresented.toggle()
            }
            .alert(
                "Ваш результат",
                isPresented: $isPresented,
                actions: {}
            ) {
                Text("\(dataManager.computeScore())")
            }
            
            ButtonView(title: "Начать заново", action: dataManager.startOver)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
