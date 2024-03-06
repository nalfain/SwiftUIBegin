//
//  GridUI.swift
//  SwiftUIBegin
//
//  Created by gost on 25.02.2024.
//

import SwiftUI

struct GridUI: View {
    
    let columns: [GridItem] = [
        //GridItem(.fixed(50), spacing: nil, alignment: nil) - 1 вариант Фиксированная ширина
        //GridItem(.flexible(), spacing: nil, alignment: nil) - 2 вариант Гибкий (мин и макс значения не задаем)
        //GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil) - 3 вариант адаптивный два столбца.
        //        GridItem(.fixed(50), spacing: nil, alignment: nil), // раскоментируй 1 вариант
        //        GridItem(.fixed(75), spacing: nil, alignment: nil), // раскоментируй 1 вариант
        //        GridItem(.fixed(100), spacing: nil, alignment: nil), // раскоментируй 1 вариант
        //        GridItem(.fixed(75), spacing: nil, alignment: nil), // раскоментируй 1 вариант
        //        GridItem(.fixed(50), spacing: nil, alignment: nil), // раскоментируй 1 вариант
        //        GridItem(.flexible(), spacing: nil, alignment: nil), // раскоментируй 2 вариант
        //        GridItem(.flexible(), spacing: nil, alignment: nil), // раскоментируй 2 вариант
        //        GridItem(.flexible(), spacing: nil, alignment: nil), // раскоментируй 2 вариант
        //        GridItem(.flexible(), spacing: nil, alignment: nil), // раскоментируй 2 вариант
        //        GridItem(.flexible(), spacing: nil, alignment: nil) // раскоментируй 2 вариант
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil), // раскоментируй 3 вариант
        //        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil) // раскоментируй 3 вариант
        GridItem(.flexible(), spacing: 6, alignment: nil), //spacing - растояния по вертикали между квадратами
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            //           Rectangle()
            //               .foregroundColor(Color.white)
            //               .frame(height: 400)
            //           LazyVGrid(columns: columns) {
            //                ForEach(0..<50) { index in
            //                    Rectangle()
            //                        .frame(height: 150) // фиксированная высота
            //                }
            //            }
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6, //растояние по вертикали между квадратами
                pinnedViews: [.sectionHeaders], //закрепляет заголовки (Section 1 и Section 2) heders и футеры
                content: {
                    Section(header:
                                Text("Section 1")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(.blue)
                                    .padding()
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150) // фиксированная высота
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(.red)
                                    .padding()
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(height: 150) // фиксированная высота
                        }
                    }
                    
                })
        }
    }
}

struct GridUI_Previews: PreviewProvider {
    static var previews: some View {
        GridUI()
    }
}
