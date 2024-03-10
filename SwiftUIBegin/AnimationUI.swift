//
//  AnimationUI.swift
//  SwiftUIBegin
//
//  Created by MP on 09.03.2024.
//

import SwiftUI

struct AnimationUI: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isAnimated.description)") {
                withAnimation(
                    .default.delay(2.0)
                    .repeatCount(5, autoreverses: false) // Повторение 1 повтор это движение в одном направлении. автореверс делает возврат поэкспеременируй с true & false
                    //.repeatForever(autoreverses: true) //Вечно пока экран не закроют.
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            //Так как если нажатие на кнопку True ширина прямоугольника 100 а его радиус угла 100/2 = 50 то он превратиться в круг :)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 :300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 :0) //перемещает обьект по x & y в право, лево, верх или низ.
                //.rotationEffect(Angle(degrees: isAnimated ? 360 : 0), anchor: .bottomTrailing) //Еще один вариант анимации вместо того что выше.
                //.animation(.default.delay(5.0).repeatCount(2), value: isAnimated) //ее так же можно применять к конкретному объекту. тогда на верху ее можно убрать.
            Spacer()
        }
    }
}

struct AnimationUI_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUI()
    }
}
