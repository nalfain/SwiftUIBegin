//
//  image.swift
//  SwiftUIBegin
//
//  Created by gost on 09.02.2024.
//

import SwiftUI

struct image: View {
    var body: some View {
        VStack {
            Image("mops2")
                .resizable() // если мы хотим поработать с картинкой.
                .scaledToFill() //немного заходит за фрейм? но ничего страшного.
                .frame(width: 200, height: 150)
            //            .clipped()
                .cornerRadius(30)// скруглим углы. Вместо образки.
            Image("mops")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .cornerRadius(150)//если радиус поставить в половину размера фрейма (300/2=150) то получиться круг :)
            Image("mops")
                .resizable()
                .scaledToFill()
   //             .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(
                    //Circle()
                    RoundedRectangle(cornerRadius: 20)
                    //Ellipse()
                )
            Image("logo")
                .renderingMode(.template) // если логотип без фона позволит менять цвет или в настройках рисунка в разделе Assets установить image rendring - transperent. Тогда не придется каждый раз тут это печать. И ты сможешь закоментировать этот код.
                .resizable()
                //.scaledToFill()
                .scaledToFit()
                .frame(width: 200, height: 100)
                .foregroundColor(.red)
                .clipShape(
                    //Circle()
                    RoundedRectangle(cornerRadius: 50)
                    //Ellipse()
                )
        }
    }
}

struct image_Previews: PreviewProvider {
    static var previews: some View {
        image()
    }
}
