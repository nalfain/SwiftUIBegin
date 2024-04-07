//
//  ButtonStylesUI.swift
//  SwiftUIBegin
//
//  Created by MP on 07.04.2024.
//

import SwiftUI

struct ButtonStylesUI: View {
    var body: some View {
        VStack {
            //Цвет сменить можно в Assets AccntColor для всего приложения разом.
            
            //Удобнее всего использовать конструкцию ниже.
            Button {
                
            } label: {
                Text("Button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent) // стили
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large) // размеры
            
            //Другие варианты стилизации.
            //Стили
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            
            
            //Размеры
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button("Buttton title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding()
    }
}

struct ButtonStylesUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesUI()
    }
}
