//
//  ColorPickerUI.swift
//  SwiftUIBegin
//
//  Created by MP on 22.03.2024.
//

import SwiftUI

struct ColorPickerUI: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select Collor ->", selection: $backgroundColor)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.headline)
                .padding(60)
                
        }
    }
}

struct ColorPickerUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerUI()
    }
}
