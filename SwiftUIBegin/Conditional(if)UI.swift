//
//  Conditional(if)UI.swift
//  SwiftUIBegin
//
//  Created by MP on 09.03.2024.
//

import SwiftUI

struct Conditional_if_UI: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            if showCircle {
                Circle()
                    .frame(width: 50, height: 50)
            }else if showRectangle {
                Rectangle()
                    .frame(width: 50, height: 50)
            }else {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 50)
            }
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            if showCircle || !showRectangle { //&&-и, ||-или, !- не true
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
            }
            Button("is loadind: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            }else {
                Text("Loading is finish")
                    .foregroundColor(.blue)
            }
            Spacer()
        }
    }
}

struct Conditional_if_UI_Previews: PreviewProvider {
    static var previews: some View {
        Conditional_if_UI()
    }
}
