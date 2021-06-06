//
//  TextView.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 06.06.2021.
//

import SwiftUI

struct TextView: View {
    @Binding var value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: .constant(0.0))
    }
}
