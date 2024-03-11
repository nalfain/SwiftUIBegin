//
//  AnimationTimingUI.swift
//  SwiftUIBegin
//
//  Created by MP on 11.03.2024.
//

import SwiftUI

struct AnimationTimingUI: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button \(isAnimated.description)") {
                isAnimated.toggle()
            }
            //Хотя и анимация разная они все заканчиваються в одно и тоже время.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.default, value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated) //одинаковая скорость
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated) //медлеенно и потом быстрее
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated) //медленно быстро медленно
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated) //быстро медленно
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
            //длительность отскок и третий параметр неизвестно что, но дефолтное значение у него 1.0. Попробуй response 0.5 dampingFraction 0.7& Можно погуглить кривые для быстрой анимации для их более подробного изучения. Те что есть закрывают 99% потребностей.
                .animation(.spring(response: 1.0, dampingFraction: 0.2, blendDuration: 1.0), value: isAnimated)
        }
    }
}

struct AnimationTimingUI_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingUI()
    }
}
