//
//  SafeAriaUI.swift
//  SwiftUIBegin
//
//  Created by MP on 04.03.2024.
//

import SwiftUI

struct SafeAriaUI: View {
    var body: some View {
        
//Теперь можно не использовать edgesIgnoringSafeArea(.all) работает по умолчанию
        ScrollView {
            VStack {
                Text ("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(00..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct SafeAriaUI_Previews: PreviewProvider {
    static var previews: some View {
        SafeAriaUI()
    }
}
