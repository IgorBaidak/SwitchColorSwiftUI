//
//  SliderSetupBlue.swift
//  SwitchColorSwiftUI
//
//  Created by Igor Baidak on 7.10.22.
//

import SwiftUI

struct SliderSetupBlue: View {
    
    @Binding var valueSliderBlue: Double
    var colorSliderBlue: Color
    @Binding var valueTFBlue: String
    
    
    var body: some View {
        
        HStack {
            Text("\(lround(valueSliderBlue))")
                .foregroundColor(.white)
            
            Slider(value: $valueSliderBlue, in: 0...100, step: 1)
                .frame(width: 250)
                .colorMultiply(colorSliderBlue)
        
            TextField("\(lround(valueSliderBlue))", text: $valueTFBlue)
                .background(.white)
        } .padding(.horizontal)
    }
}
