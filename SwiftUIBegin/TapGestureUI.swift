//
//  TapGestureUI.swift
//  SwiftUIBegin
//
//  Created by MP on 29.03.2024.
//

import SwiftUI

struct TapGestureUI: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack( spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            Text("TapGestrue")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("TapGestrue twice")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
            //Двойной тройной и т.д. клик.
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
                    
            Spacer()

        }
        .padding(40)
    }
}

struct TapGestureUI_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureUI()
    }
}
