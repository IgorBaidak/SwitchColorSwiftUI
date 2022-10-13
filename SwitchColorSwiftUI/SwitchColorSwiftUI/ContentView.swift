//
//  ContentView.swift
//  SwitchColorSwiftUI
//
//  Created by Igor Baidak on 7.10.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var valueSliderRed: Double = 100
    @State private var valueTFRed: String = ""
    @State private var valueSliderBlue: Double = 100
    @State private var valueTFBlue: String = ""
    @State private var valueSliderGreen: Double = 100
    @State private var valueTFGreen: String = ""
    
    
    
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                RectangleColor(colorR: valueSliderRed, colorG: valueSliderGreen, colorB: valueSliderBlue)
                RectangleColor(colorR: valueSliderRed, colorG: valueSliderGreen, colorB: valueSliderBlue)
                
                SliderSetupRed(valueSliderRed: $valueSliderRed, colorSliderRed: .red, valueTFRed: $valueTFRed)
                SliderSetupBlue(valueSliderBlue: $valueSliderBlue, colorSliderBlue: .blue, valueTFBlue: $valueTFBlue)
                SliderSetupGreen(valueSliderGreen: $valueSliderGreen, colorSliderGreen: .green, valueTFGreen: $valueTFGreen)
                Button("Save") {
                    
                }
                Spacer()
                
            }
            
            .padding()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
