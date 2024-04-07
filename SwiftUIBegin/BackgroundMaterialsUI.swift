//
//  BackgroundMaterialsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 07.04.2024.
//

import SwiftUI

struct BackgroundMaterialsUI: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Text("Hi")
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(.black)
            //.opacity(0.5) // В место такой реализации лучше использовать материалы.
            //.background(.thinMaterial)
            //.background(.thickMaterial)
            //.background(.regularMaterial)
            .background(.ultraThinMaterial)
            //.background(.ultraThickMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("mops")
            
        )
    }
}

struct BackgroundMaterialsUI_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsUI()
    }
}
