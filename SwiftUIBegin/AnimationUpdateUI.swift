//
//  AnimationUpdateUI.swift
//  SwiftUIBegin
//
//  Created by MP on 16.04.2024.
//

import SwiftUI

struct AnimationUpdateUI: View {
    
    @State private var animateAction1: Bool = false
    @State private var animateAction2: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    animateAction1.toggle()
                } label: {
                    Text("Action 1")
                }
                Button {
                    animateAction2.toggle()
                } label: {
                    Text("Action 2")
                }
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animateAction1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animateAction2 ? .top : .bottom)
                        //.background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
        }
        //OLD version All in View have this animation
        //.animation(.spring())
        //NEW version you can mark for each animation action on View
        .animation(.spring(), value: animateAction1)
        .animation(.linear(duration: 5), value: animateAction2)
    }
}

struct AnimationUpdateUI_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdateUI()
    }
}
