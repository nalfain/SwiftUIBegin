//
//  Stacks.swift
//  SwiftUIBegin
//
//  Created by gost on 18.02.2024.
//

import SwiftUI
//Мы уже пользовались с тобой стеки в предыдущих примерах. Рассмотрим их подробнее.
//VStack -> Vertical Распологается вертикально сверху вниз
//HStack -> Horisontal Распологается горизонтально с лева на право
//ZStack -> zIndex Распологается с самого дальшего объекта зади в перед
struct Stacks: View {
    var body: some View {
        VStack {
            HStack {
//Для всех видов стеков есть настройка формата.
//HStack (alignment: .center, spacing: nil, content: {
//содержимое стека
//})
//выравнивание в стеке - alignment: .center
//растояние между объектами в стеке - spacing: nil значение по умолчанию. попробуй изменить на 0, 50 и 8, потом верни на nil.
//содержимое стека - content:
                VStack (alignment: .center, spacing: nil, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 30, height: 30)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 10, height: 10)
                })
                HStack(alignment: .center, spacing: 8, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 30, height: 30)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 10, height: 10)
                })
                ZStack(alignment: .bottomTrailing, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 30, height: 30)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 10, height: 10)
                })
            }
//В ZStack ниже у нас находятся желтый квадрат и  VStack.
//В VStack находятся красный, зеленый квадраты и HStack
//В HStack находятся фиолетовый, красный и синий квадраты
// В каждом стеке разное выравнивание.
            ZStack(alignment: .top, content: {
                Rectangle()
                    .fill(Color.yellow)
                VStack (alignment: .leading, spacing: 30, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 80, height: 80)
                    HStack (alignment: .bottom, spacing:0, content: {
                        Rectangle()
                            .fill(Color.purple)
                        .frame(width: 50, height: 50)
                        Rectangle()
                            .fill(Color.red)
                        .frame(width: 75, height: 75)
                        Rectangle()
                            .fill(Color.blue)
                        .frame(width: 25, height: 25)
                    })
                    .background(Color.white) //для наглядности давай покрасим фон HStack черным.
                })
                .background(Color.black) //а фон VStack сделаем белым
            })
            VStack(alignment: .center, spacing: 10, content: {
                Text ("5")
                    .font(.largeTitle)
                    .unredacted()
                Text ("New orders")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            })
//Здесь представлены две одинаковые фигуры но они реализованы по разному.
//Первая через ZStack, вторая через .background
//Если надо сделать 1,2,3 слоя лучше использовать второй вариант. Если больше то первый. что бы не забывать оба варианта.
//Но можно использовать по принципу какой удобнее тем и пользоваться.
            VStack (spacing: 40, content: {
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    Text ("1")
                        .font(.title)
                        .foregroundColor(Color.white)
                }
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(
                        Circle()
                            .frame(width: 100, height: 100)
                    )
            })
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
