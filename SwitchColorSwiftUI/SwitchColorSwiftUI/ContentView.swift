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
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.red)
                    .frame(height: 100)
                    
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(height: 100)
                SliderSetupRed(valueSliderRed: $valueSliderRed, colorSliderRed: .red, valueTFRed: $valueTFRed)
                SliderSetupBlue(valueSliderBlue: $valueSliderBlue, colorSliderBlue: .blue, valueTFBlue: $valueTFBlue)
                SliderSetupGreen(valueSliderGreen: $valueSliderGreen, colorSliderGreen: .green, valueTFGreen: $valueTFGreen)
                Spacer()
                Button("Save") {
                        
                }
            }
            
            .padding()
                    
            
//            HStack {
//                Text("Value")
//                    .foregroundColor(.white)
//                
//                Slider(value: $valueSliderOne)
//                    .frame(width: 250)
//                    .colorMultiply(.red)
//            
//                TextField("Value", text: $valueTFOne)
//                    .background(.white)
//                    .foregroundColor(.black)
//            } .padding(.horizontal)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
