//
//  ExtractedFuncrionUI.swift
//  SwiftUIBegin
//
//  Created by MP on 07.03.2024.
//

import SwiftUI

struct ExtractedFuncrionUI: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            //описан в отдельной вью var contentLayer
            contentLayer
        }
    }
    //заголовок сделан константой она не может меняться
    let title: String = "Title"
    
    //Мы вынесли в отдельную переменную вид contentLayer и его логику.
    var contentLayer: some View {
        VStack {
            Text("\(title)")
                .font(.largeTitle)
            Button {
                //Обращаемся к функции
                buttonPressed()
            } label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background {
                        Color.black
                            .cornerRadius(10)
                        }
                }
            }
        }
    //Вынесли в функцию логику нажатия на кнопку. Так надо делать всегда так как логики может быть много. И это позволяет отделить логику от вида кнопки.
    func buttonPressed() {
        if backgroundColor == Color.yellow {
            backgroundColor = Color.pink
        }
        else {
            backgroundColor = Color.yellow
        }
    }
}

struct ExtractedFuncrionUI_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFuncrionUI()
    }
}
