//
//  ContentView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Double.random(in: 0...100).rounded()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Подвиньте слайдер как можно ближе к: \(lround(number))")
            HStack {
                Text("0")
                Slider(value: $number, in: 0...100, step: 1)
                Text("100")
            }
            Button("Проверь меня!", action: {})
            Button("Начать заново", action: {})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
