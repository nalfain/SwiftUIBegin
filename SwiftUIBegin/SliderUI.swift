//
//  SliderUI.swift
//  SwiftUIBegin
//
//  Created by MP on 23.03.2024.
//

import SwiftUI

struct SliderUI: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Raiting:")
            Text(
                String(format: "%.1f", sliderValue) //так же можно 2, 3, 4 и тд.
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            
            //Каждый слайдер лучше смотреть по отдельности.
            //First Slader
            Slider(value: $sliderValue)
                .accentColor(.green)
            //Second Slider
            Slider(value: $sliderValue, in: 0...100)
            //Third Slider
            Slider(value: $sliderValue, in: 0...50, step: 1.0)
            //Foruth Slader
            Slider(value: $sliderValue ,
                   in: 0...30,
                   step: 1.0) {
                Text("Title")
            } minimumValueLabel: {
                Text("0")
                    .font(.headline)
            } maximumValueLabel: {
                Text("50")
                    .font(.headline)
            } onEditingChanged: { _ in
                color = .green
            }

        }
        .padding()
    }
}

struct SliderUI_Previews: PreviewProvider {
    static var previews: some View {
        SliderUI()
    }
}
