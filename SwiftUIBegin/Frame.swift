//
//  Frame.swift
//  SwiftUIBegin
//
//  Created by gost on 09.02.2024.
//

import SwiftUI

struct Frame: View {
    var body: some View {
   //     MyFramesAlignment
        MyFramesDificultAlignment
        }
}
//Тут показаны варианты работы с фремами
var MyFramesAlignment: some View {
    VStack {
        HStack {
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .center)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .leading)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .trailing)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .top)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .bottom)
                .background(Color.red)
        }
        HStack {
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .topLeading)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .bottomLeading)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .topTrailing)
                .background(Color.red)
            Text("Hello!")
                .background(Color.green)
                .frame(width: 70, height: 70, alignment: .bottomTrailing)
                .background(Color.red)
        }
    }
}
//посмотрим на сложный фрейм с динамическими границами и выравнивание в нем. .infinity - означает бесконечность.
//.frame(minWidth: <#T##CGFloat?#>, idealWidth: <#T##CGFloat?#>, maxWidth: <#T##CGFloat?#>, minHeight: <#T##CGFloat?#>, idealHeight: <#T##CGFloat?#>, maxHeight: <#T##CGFloat?#>, alignment: <#T##Alignment#>)/

//при разработке и отладке фреймам лучше присваивать цвета что бы точно видеть где они распологаются и почему. Когда все отлажено цвета убирают.
var MyFramesDificultAlignment: some View {
    Text("Hello! World")
        .background(Color.green)
        .frame(height: 100, alignment: .top)
        .background(Color.red)
        .frame(width: 150)
        .background(Color.orange)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.blue)
        .frame(height: 400)
        .background(Color.purple)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color.yellow)
}



struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
