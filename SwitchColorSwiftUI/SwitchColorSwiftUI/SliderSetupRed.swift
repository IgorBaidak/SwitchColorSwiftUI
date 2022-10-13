//
//  SliderSetup.swift
//  SwitchColorSwiftUI
//
//  Created by Igor Baidak on 7.10.22.
//

import SwiftUI

struct SliderSetupRed: View {
    
    @Binding var valueSliderRed: Double
    var colorSliderRed: Color?
    @Binding var valueTFRed: String
    
    
    var body: some View {
        
        HStack {
            Text("\(lround(valueSliderRed))")
                .foregroundColor(.white)
            
            Slider(value: $valueSliderRed, in: 0...100, step: 1)
                .frame(width: 250)
                .colorMultiply(colorSliderRed!)
        
            TextField("\(lround(valueSliderRed))", text: $valueTFRed)
                .background(.white)
            
        } .padding(.horizontal)
    }
}

