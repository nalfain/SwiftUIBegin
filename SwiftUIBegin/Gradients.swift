//
//  Gradients.swift
//  SwiftUIBegin
//
//  Created by gost on 08.02.2024.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        VStack {
            HStack{
                VStack {
                    RoundedRectangle(cornerRadius: 25) //скругленный прямоугольник.
                    //Разобъем то что у нас получиться потом для удобства чтения.
                    //.fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    
//Линейный градиенто. Линейный гразиент идет по линии от точки до точки.
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),//цвета
                                startPoint: .topLeading, //точка откуда он начинается
                                endPoint: .bottom) //точка куда направлен
                        )
                        .frame(width: 300, height: 150) //рамка ограничивающая наш скругленный прямоугольник
                HStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), //Цвета назначаем перетаскиванием из Edit>Format>Show collors. Попробуй скопировать эти цвета [] в примеры ниже.
                                startPoint: .topLeading,
                                endPoint: .bottom)
                            )
                        .frame(width: 150, height: 150)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue, Color.pink, Color.yellow]), //Градиент может быть из нескольких цветов
                                startPoint: .leading,
                                endPoint: .trailing)
                            )
                        .frame(width: 150, height: 150)
                    }
  //Радиальный градиент. Радиальный градиент распостраняется от центра по радиусу окружности
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            RadialGradient(
                            colors: [Color.red, Color.blue],
                            center: .topLeading,
                            startRadius: 5,
                            endRadius: 350)
                        )
                        .frame(width: 300, height: 150)
  //Ангулярный градиент. Почитать определение в интеренете.
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            AngularGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                center: .topLeading,
                                angle: .degrees(180 + 45))
                            )
                        .frame(width: 300, height: 150)
                }
            }
        }
    }
}
struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
