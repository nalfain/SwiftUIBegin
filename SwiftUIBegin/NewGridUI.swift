//
//  NewGridUI.swift
//  SwiftUIBegin
//
//  Created by MP on 20.04.2024.
//

import SwiftUI

struct NewGridUI: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 50) {
                Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20) {
                    ForEach(1..<5) { rowIndex in
                        GridRow(alignment: .top) {
                            ForEach(1..<5) { columnIndex in
                                let cellNumber = rowIndex * 4 + columnIndex - 4
                                if cellNumber == 7 {
                                    //Color.green
                                    //Color.clear //clear подбирает цвет который у ячейки под фон.
                                        //.gridCellUnsizedAxes([.horizontal, .vertical]) // не дает расширяться
                                    EmptyView()
                                }
                                else{
                                    cell(index: cellNumber)
                                        .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                        .gridCellAnchor(.trailing)
                                        .gridColumnAlignment(
                                            cellNumber == 1 ? .trailing :
                                            cellNumber == 4 ? .leading :
                                            .center
                                        )
                                }
                            }
                        }
                    }
                }
                Grid() {
                    GridRow {
                        ForEach(1..<4) { index in
                            cell(index: index)
                        }
                    }
                    //cell(index: 33333333)
                    Divider()
                        .gridCellUnsizedAxes(.horizontal) // посмотреть как работает не дает масштабироваться
                    GridRow {
                        ForEach(4..<6) { index in
                            cell(index: index)
                        }
                    }
                }
            }
        }
    }
}

private func cell(index: Int) -> some View {
    Text("\(index)")
        .frame(height: index == 10 ? 5 : nil)
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        .fontWeight(.semibold)
        
}

struct NewGridUI_Previews: PreviewProvider {
    static var previews: some View {
        NewGridUI()
    }
}
