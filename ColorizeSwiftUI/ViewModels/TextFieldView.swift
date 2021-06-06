//
//  TextFieldView.swift
//  ColorizeSwiftUI
//
//  Created by Mac on 06.06.2021.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    @Binding var userValue: Double
    @State var isAlertNeeded: Bool = false
    private let range = 0.0...255.0
    
    var body: some View {
        TextField("0", text: $text, onCommit:  {
            
            if let doubleValue = Double(text), range.contains(doubleValue){
                userValue = doubleValue
            } else {
                showAlert()
                text = ""
            }
        })
        .alert(isPresented: $isAlertNeeded, content: {
            Alert(title: Text("Не верно"),
                  message: Text("Введите число от 0 до 255"))
        })
        .frame(width: 50, alignment: .trailing)
        .onAppear(perform: {
            text = String(lround(userValue))
        })
    }
    
    private func showAlert() {
        isAlertNeeded.toggle()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant(""), userValue: .constant(0.0))
    }
}
