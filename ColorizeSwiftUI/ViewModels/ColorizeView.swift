//
//  ColorizeView.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 04.06.2021.
//

import SwiftUI

struct ColorizeView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 5)
            )
            .frame(width: 350, height: 125)
    }
}


struct ColorizeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizeView(red: 255, green: 0, blue: 0)
    }
}
