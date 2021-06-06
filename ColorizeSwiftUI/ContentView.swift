//
//  ContentView.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0.0...255.0)
    @State private var green = Double.random(in: 0.0...255.0)
    @State private var blue = Double.random(in: 0.0...255.0)
    
    @State private var redText = ""
    @State private var greenText = ""
    @State private var blueText = ""
    
    
    
    var body: some View {
        ZStack{
            Color(.blue)
                .ignoresSafeArea()
            VStack{
                ColorizeView(red: red, green: green, blue: blue)
                    
                FullSliderDetail(userValue: $red, userText: $redText, text: $redText, color: .red)
                FullSliderDetail(userValue: $green, userText: $greenText, text: $greenText, color: .green)
                FullSliderDetail(userValue: $blue, userText: $blueText, text: $blueText, color: .blue)
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
