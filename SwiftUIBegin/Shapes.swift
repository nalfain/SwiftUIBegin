//
//  SwiftUIShapes.swift
//  SwiftUIBegin
//
//  Created by x on 08.02.2024.
//

import SwiftUI

struct SwiftUIShapes: View {
//Структура это VIEW в нее входят несколько переменных body и CircleView.
//При этом мы используем в body нашу отдельную переменную СircleView.
//В ней мы работаем с кругами. А можем добавить еще таки переменных и
//в body просто на них ссылаться. Это позволяет ллогически определять элементы и работать только с ними не путаясь в куче кода. CircleView - сам придумываешь названия.
    var body: some View {
        VStack {
            CircleView
            EllipceView
            RectangleView
        }
    }
//Тут мы работаем с кругами
    var CircleView: some View {
//VStack говорит о том что все, что находиться у него в скобках {строки с 25 по 52} расположить по вертикали с верху в низ. Внутри него три HStack.
        VStack {
            //HStack говорит о том что все, что находиться у него в скобках {строки с 27 по 34} расположить по горизонтали c лева на право. Внутри него 3 круга.
            HStack() {
                Circle()
                    .fill(Color.blue) //заливка цветом
                Circle()
                    .foregroundColor(.orange) //заливка цветом другой способ
                Circle()
                    .stroke() //контур
            }
            HStack() {
                Circle()
                    .stroke(Color.red) //контур с цветом
                Circle()
                    .stroke(Color.green, lineWidth: 10) //контур с цветом и определенной толщиной
                Circle()
                    .stroke(Color.pink, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [3])) //контур с цветом, толщиной, и еще двумя модификаторами .butt и dsah.
            }
            HStack() {
                Circle()
                    .stroke(Color.indigo, style: StrokeStyle(lineWidth: 15, lineCap: .round, dash: [15])) //модификатор .butt заменен на .round
                Circle()
                    .trim(from: 0.5, to: 1) //модификатор обрезки от 0 до 100%
                Circle()
                    .trim(from: 0.2, to: 1)
                    .stroke(Color.purple, lineWidth: 10)
            }
          
        }
    }
//Тут мы работаем с элипсами
    var EllipceView: some View {
        HStack() {
            Ellipse() // Элипс
                .stroke(Color.red)
                .frame(width: 120, height: 80) // Всегда идет в конце модификаторов форм.
            Capsule(style: .circular)
                .stroke(Color.green, lineWidth: 10)
                .frame(width: 120, height: 80)
            Capsule(style: .continuous)
                .stroke(Color.pink, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [3]))
                .frame(width: 120, height: 80)
        }
    }
//Тут мы работаем с прямоугольниками
    var RectangleView: some View {
        HStack() {
            Rectangle() //Прямоугольник
                .frame(width: 120, height: 80)
            RoundedRectangle(cornerRadius: 15) //Скругленный по углам прямоугольник, указывается радиус скругления
                .frame(width: 120, height: 80)
            RoundedRectangle(cornerRadius: 15)
                .trim(from: 0.4, to: 1) // обрезали прямоугольник на 40%
                .frame(width: 120, height: 80)
        }
    }
}

//А это делает превью на экране на основании нашей структуры в строке 10 
struct SwiftUIShapes_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShapes()
    }
}
