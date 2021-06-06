//
//  ColorSliderView.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 04.06.2021.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    @Binding var text: String
    let color: Color
    private let range = 0.0...255.0
    
    
    var body: some View {
        Slider(value: $value, in: range, step: 1, onEditingChanged: changeText)
            .accentColor(color)
    }
    
    private func changeText(chandged: Bool) -> Void {
        text = String(lround(value))
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(value: .constant(255.0), text: .constant(""), color: .blue)
    }
}
