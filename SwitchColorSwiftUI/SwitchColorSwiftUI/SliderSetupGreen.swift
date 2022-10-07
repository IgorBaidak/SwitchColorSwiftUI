//
//  SliderSetupGreen.swift
//  SwitchColorSwiftUI
//
//  Created by Igor Baidak on 7.10.22.
//

import SwiftUI

struct SliderSetupGreen: View {
    
    @Binding var valueSliderGreen: Double
    var colorSliderGreen: Color
    @Binding var valueTFGreen: String
    
    
    var body: some View {
        
        HStack {
            Text("0")
                .foregroundColor(.white)
            
            Slider(value: $valueSliderGreen, in: 0...100, step: 1)
                .frame(width: 250)
                .colorMultiply(colorSliderGreen)
        
            TextField("\(lround(valueSliderGreen))", text: $valueTFGreen)
                .background(.white)
        } .padding(.horizontal)
    }
}
