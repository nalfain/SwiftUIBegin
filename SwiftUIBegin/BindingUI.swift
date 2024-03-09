//
//  BindingUI.swift
//  SwiftUIBegin
//
//  Created by MP on 08.03.2024.
//

import SwiftUI

struct BindingUI: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
//Используем @Binding когда нам надо изменить что то в другой View. Связываем переменные в строке 18 вызываем ButtonView(backgroundColor: $backgroundColor) переменные называем одинаково. Говорят можно по разному но у меня не получилось.
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue // Эту переменную мы используем только тут
    var body: some View {
        Button {
//обращаемся к функции в этом View
            buttonPressed()
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background {
                    buttonColor
                        .cornerRadius(10)
                }
        }
    }
    func buttonPressed() {
        if backgroundColor == Color.yellow {
            backgroundColor = Color.pink
            buttonColor = Color.orange
            title = "Title if"
        }
        else {
            backgroundColor = Color.yellow
            buttonColor = Color.blue
            title = "Title else"
        }
    }
}

struct BindingUI_Previews: PreviewProvider {
    static var previews: some View {
        BindingUI()
    }
}
