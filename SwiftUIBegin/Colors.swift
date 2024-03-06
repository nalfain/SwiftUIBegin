//
//  Colors.swift
//  SwiftUIBegin
//
//  Created by х on 08.02.2024.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 150, height: 100)
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.primary)
                    .frame(width: 150, height: 100)
            }
            HStack {
                RoundedRectangle(cornerRadius: 25)
                //.fill(Color(сюда перетаскиваем цвет из меню Edit>Format>Collors который там выбрали))
                    .fill(Color(#colorLiteral(red: 1, green: 0.5821057549, blue: 0.4994349015, alpha: 1)))
                    .frame(width: 150, height: 100)
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(uiColor: .secondarySystemBackground)) //системные цвета
                    .frame(width: 150, height: 100)
            }
            HStack {
                RoundedRectangle(cornerRadius: 25)
                //Слева в меню передем в раздел Assets и нажав плючик внизу добавим Color Set
                //Назовем его CustomColor. Теперь мы можем открыть меню которое у нас в самом правом верхнем углу и настроить каждый цвет в одном и втором окошке. В превью с права в Device setings мы можем переключать режим на DARK и обратно.
                    .fill(Color("CustomColor")) // и использовать его.
                    .frame(width: 150, height: 100)
            }
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(uiColor: .secondarySystemBackground)) //системные цвета
                    .frame(width: 150, height: 100)
                    .shadow(radius: 10) // Добавим просто тень радиусом 10.
            }
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
// Тут мы используем наш цвет для тени, прозрачность, радиус и смещаем. Ось х идет с лева на право, а ось Y с верху в низ.
                .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: 20)
                .frame(width: 300, height: 200)
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
