//
//  SliderView.swift
//  CheckNumber
//
//  Created by Alex on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text("0")
            UISliderRepresentation(value: $value)
            Text("100")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(23))
    }
}
