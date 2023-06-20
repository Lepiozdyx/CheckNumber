//
//  UISliderRepresentation.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
    @Binding var value: Double
    @ObservedObject var dataManager: DataManager
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        slider.thumbTintColor = .red
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.sliderValueHasChanged),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
        uiView.alpha = CGFloat(dataManager.computeScore()) / 100
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
    
}

// MARK: - Coordinator
extension UISliderRepresentation {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func sliderValueHasChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}
