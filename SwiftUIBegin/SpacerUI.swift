//
//  SpacerUI.swift
//  SwiftUIBegin
//
//  Created by gost on 19.02.2024.
//

import SwiftUI

struct SpacerUI: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                //Добавим разделитель и сделаем его видимым. Разделитель толкает объекты на край экрана.
                // Увидеть это можно изменив размеры прямоугольников.
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            .background(Color.blue)
            
            HStack (spacing: 0, content: { //Изменим spacing в HStach с значения по умолчанию на 0
                //Теперь объекты отталкиваются от левой части экрана
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            })
            .background(Color.blue)
            
            HStack (spacing: 0, content: { //Изменим spacing в HStach с значения по умолчанию на 0
                // Сколько разделителей мы бы не добавили они всегда будут отталкивать объекты на одинаковые растояния.
                //Тут объекты отталкиваются от левой части экрана.
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .frame(width: 50, height: 50)
                //Тут отталкиваются черный и красный кубики
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                //Тут отталкиваются красный и зеленый кубики
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                //Тут объекты отталкиваются от правой части экрана
                Spacer()
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
            })
            //мы добавили ко всему стэку .padding(.horizontal, 500) но спейсеры сжались только до установленных минимальных значений.
            HStack (spacing: 0, content: { //Изменим spacing в HStach с значения по умолчанию на 0
                // Сколько разделителей мы бы не добавили они всегда будут отталкивать объекты на одинаковые растояния.
                //Тут объекты отталкиваются от левой части экрана.
                Spacer(minLength: 0) // Тут добавляем минимальную длинну и устанавливаем ее на 0
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .frame(width: 50, height: 50)
                //Тут отталкиваются черный и красный кубики
                Spacer(minLength: 20)// Тут добавляем минимальную длинну и устанавливаем ее на 20
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                //Тут отталкиваются красный и зеленый кубики
                Spacer(minLength: 20) // Тут добавляем минимальную длинну и устанавливаем ее на 20
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                //Тут объекты отталкиваются от правой части экрана
                Spacer(minLength: 0) // Тут добавляем минимальную длинну и устанавливаем ее на 0)
                    .frame(height: 10) // добавляем только высоту
                    .background(Color.orange) // и цвет.
            })
            .background(Color.yellow)
            .padding(.horizontal, 500) // если мы закоментируем это то квадраты вырвняются
            .background(Color.blue)
            .padding()
            
            VStack {
                HStack(spacing: 0, content:{
                    Image(systemName: "xmark")
                    Spacer()
                    Image(systemName: "gear")
                            
                })
                .font(.title)
                Spacer()
//              .background(Color.yellow)
                .padding(.horizontal)
//              .background(Color.blue)
                Rectangle()
                    .frame(height: 55)
            }
//            .background(Color.yellow)
        }
    }
}

struct SpacerUI_Previews: PreviewProvider {
    static var previews: some View {
        SpacerUI()
    }
}
