//
//  TransitionUI.swift
//  SwiftUIBegin
//
//  Created by MP on 11.03.2024.
//

import SwiftUI

struct TransitionUI: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom){
            VStack {
                Button("Button \(showView.description)") {
                    withAnimation (.spring(response: 0.8, dampingFraction: 0.7, blendDuration: 1.0)){ //Работает только так. Тут выбираем тип анимации. И работает с пружиной. С другими примерами не всегда работает. В общем работает глючно.
                        showView.toggle()
                    }
                }
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        ))
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct TransitionUI_Previews: PreviewProvider {
    static var previews: some View {
        TransitionUI()
    }
}
