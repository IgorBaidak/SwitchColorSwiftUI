//
//  RectangleColor.swift
//  SwitchColorSwiftUI
//
//  Created by Igor Baidak on 13.10.22.
//

import SwiftUI

struct RectangleColor: View {
    let colorR: Double
    let colorG: Double
    let colorB: Double
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: colorR/100, green: colorG/100, blue: colorB/100, opacity: 2))
            .frame(height: 100)
            .cornerRadius(15)
            
    }
}


