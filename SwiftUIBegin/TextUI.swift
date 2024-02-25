//
//  SwiftUIText.swift
//  SwiftUIBegin
//
//  Created by x on 07.02.2024.
//
//Что бы закоментировать или раскоментировать СРАЗУ несколько строк подряд
//надо выделить эти стороки с помощью шифт+стрелка в низ
//после чего нажать CMD+/

//Если два раза кликнуть по скобочке то будет выделен текст между скобками.
import SwiftUI

struct TextUI: View {
    var body: some View {
        VStack {
                //Работаем с размерами шрифта
                HStack {
                    Text("LargeTitle")
                        .font(.largeTitle)
                    Text("Title")
                        .font(.title)
                    Text("Title2")
                        .font(.title2)
                    Text("Title3")
                        .font(.title3)
                }
                HStack {
                    Text("Body")
                        .font(.body)
                    Text("Caption")
                        .font(.caption)
                    Text("Caption2")
                        .font(.caption2)
                }
                //Работаем с весом шрифта (толщиной буквы)
                HStack {
                    Text("heavy")
                        .fontWeight(.heavy)
                    Text("semibold")
                        .fontWeight(.semibold)
                    Text("medium")
                        .fontWeight(.medium)
                    Text("light)")
                        .fontWeight(.light)
                    Text("thin)")
                        .fontWeight(.thin)
                    Text("ultraLight")
                        .fontWeight(.ultraLight)
                }
                //Работаем со стилем шрифта
                HStack {
                    Text("bold")
                        .bold() //Жирный
                    Text("italic")
                        .italic() //Курсив
                    Text("underline")
                        .underline() //Подчеркнутый
                    Text("strikethrough")
                        .strikethrough() // Зачеркнутый
                }
                Text("underline and strikethrough by red collor ")
                    .underline(true, color:Color.red) //Если true подчеркнутый цветом
                    .strikethrough(true, color: Color.red) //Если true зачеркнутый цветом
                
                // Можно настроить стиль и размер таким образом.
                // Но в этом случае размер не будет динамически меняться и будет всегда 18,
                // даже если на iphone включить функцию увеличения шрифта "для старушек по крупнее".
                // Поэтому предпочтительнее использовать настройку описанную выше.
                Text ("size: 18, weight: .semibold, design: .rounded")
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                
                // Выравнивание, межстрочный интервал, кернинг (расстояние между буквами).
                // Межстрочный интервал и кернинг ВСЕГДА указывается до выравнивания!
                Text ("Давайте разберемся с выравниванием .multilineTextAlignment и выровняем текст по центру междустрочный интервал 20")
                    .baselineOffset(20.0) // + межстрочный интервал
                    .kerning(2) // Растояние между буквами
                    .multilineTextAlignment(.center) // По центу
            Text ("Второй фрагмент текста давате выровняем по левому краю междустрочный интервал -20 и сделлаем ТЕКСТ СТРОЧНЫМИ БУКВАМИ".lowercased()) //-текст будет строчными буквами в не зависимости от того как он напечатан.
                    .baselineOffset(-20.0) //- межстрочный интервал
                    .multilineTextAlignment(.leading) //По левому краю
            Text ("Третий фрагмент текста давате выровняем по правому краю и изменим в нем цвет на голубой и текст заглавными буквами".uppercased()) //-текст будет заглавными буквами в не зависимости от того как он напечатан.
                    .multilineTextAlignment(.trailing) // По правому краю
                    .foregroundColor(.blue) //Изменим цвет
                HStack {
                    Text ("Четвертый фрагмент текста давате поместим в рамку и выравняем рамку по центру каждое слово с заглавной буквы".capitalized) //-в тексте каждое слово будет с заглавной буквы.
                        .frame(width: 150, height: 100, alignment: .center) // Помещаем текст в рамку 150 на 100 и выравниваем текст в ней по центру.
                    Text ("Четвертый фрагмент текста давате поместим в рамку и выравняем рамку по центру и применим модификатор масштабирования на 0.1 (10 % от нормального значения что бы текст поместился в рамке")
                        .frame(width: 150, height: 100, alignment: .center) // Помещаем текст в рамку 150 на 100 и выравниваем ее по центру.
                        .minimumScaleFactor(0.1)
                }
                
        }
    }
}

struct TextUI_Previews: PreviewProvider {
    static var previews: some View {
        TextUI()
    }
}
