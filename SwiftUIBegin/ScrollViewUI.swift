//
//  ScrollViewUI.swift
//  SwiftUIBegin
//
//  Created by gost on 25.02.2024.
//

import SwiftUI

struct ScrollViewUI: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
//Мы используем LazyVstack для больших объемов данных в этом случае он сам ззагрузит данные для того что на экране и не будет загружать те данные которые сейчас не на экране. А как только вы будите скролировать он их сам подгрузит. 
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ForEach(0..<12) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                }
                        }
                    })
                }
            }
        })
    }
}

struct ScrollViewUI_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewUI()
    }
}
