//
//  Icons.swift
//  SwiftUIBegin
//
//  Created by gost on 09.02.2024.
//

import SwiftUI
//Для того что бы не связываться с дизайном при разработке приложений на начальном этапе крайне рекомендуется использоваться встроенные иконки.
//Каталог иконок apple доступен по адресу https://developer.apple.com/sf-symbols/ просто копируем название от туда "heart"

struct Icons: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .font(.largeTitle) //к этим системным объектам можно применять модификаторы для шрифтов см урок Text
            Image(systemName: "heart.fill")
                .font(.caption)
                .foregroundColor(Color.red)//Так же можно менять цвет
            Image(systemName: "heart.fill")
                .font(.system(size: 35)) //Если хотим задать фиксированный размер который не будет масштабироваться.
//.foregroundColor(Color(сюда перетаскиваем цвет из меню Edit>Format>Collors который там выбрали))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1561046975, blue: 0.9498045969, alpha: 1)))
//изменить размер объекта так же можно с помощью добавления СРАЗУ ПОСЛЕ Image .resizable(), применить другие модификаторы и завершить все это рамкой.
            Image(systemName: "heart.fill")
                .resizable() //
//                .aspectRatio(contentMode: .fit) //масштабирование. В рамку вписать по горизонтали
//                .scaledToFit() //Аналогично команде выше только короче.
//                .aspectRatio(contentMode: .fill) //масштабирование. В рамку вписать по вертикали
                .scaledToFill() //Аналогично команде выше только короче.
                .foregroundColor(Color.green)
                .frame(width: 200, height: 200)
//              .clipped() //Применив это к рамке мы обрежем лишнее
            Image(systemName: "person.fill.badge.plus") // эта иконка двухцветная.
                .renderingMode(.original) // Возвращаем у второго цвета базовый.
                .font(.largeTitle)
                .foregroundColor(Color.red) // а этот меняем.
            Image(systemName: "person.fill.badge.plus") // эта иконка двухцветная.
                .renderingMode(.original) // Возвращаем у второго цвета базовый. И не меняем цвет.
                .font(.largeTitle)
                
        }
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
