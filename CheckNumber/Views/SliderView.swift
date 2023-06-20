//
//  SliderView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let targetValue: Int
    let alpha: Float
    
    var body: some View {
        HStack {
            Text("0")
            UISliderRepresentation(value: $value, alpha: alpha)
            Text("100")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(23), targetValue: 50, alpha: 1)
    }
}
