//
//  Padding.swift
//  SwiftUIBegin
//
//  Created by gost on 19.02.2024.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding() //по умолчанию он наверное равен 15
                .background(Color.red)
                .padding(.all, 15)// добавим еще вокруг 15
                .background(Color.blue)
                .padding(.leading, 15) // а теперь еще 15 с лева. Они сумируются.
                .background(Color.green)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle) //Большой заголовок
                .fontWeight(.semibold) //полужирный
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .padding(.leading, 20)
                .background(Color.yellow)
                .padding(.bottom)
            
            VStack (alignment: .leading, content: {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle) //Большой заголовок
                        .fontWeight(.semibold) //полужирный
                    Text("This is descriptions of the text. This description will be a long and describe all about we shold be know about this function.")
            })
            .background(Color.blue)
            .padding()
            .background(Color.red)
            .padding(.horizontal, 10)
            .background(Color.green)
            .padding(.bottom, 20)
            
            VStack (alignment: .leading, content: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle) //Большой заголовок
                    .fontWeight(.semibold) //полужирный
                    .padding(.bottom, 30)
                Text("This is descriptions of the text. This description will be a long and describe all about we shold be know about this function.")
            })
            .padding()
            .padding(.vertical, 30)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3),
                            radius: 10,
                            x: 0.0, y: 10)
            )
            .padding(.horizontal, 10)
        }
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
