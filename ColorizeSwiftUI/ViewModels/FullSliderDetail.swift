//
//  FullSliderDetail.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 06.06.2021.
//

import SwiftUI

struct FullSliderDetail: View {
    @Binding var userValue: Double
    @Binding var userText: String
    @Binding var text: String
    let color: Color
    var body: some View {
        HStack{
            TextView(value: $userValue)
            ColorSliderView(value: $userValue, text: $text, color: color)
            TextFieldView(text: $userText, userValue: $userValue)
        }
    }
}

struct FullSliderDetail_Previews: PreviewProvider {
    static var previews: some View {
        FullSliderDetail(userValue: .constant(0.0), userText: .constant(""), text: .constant(""), color: .blue)
    }
}
