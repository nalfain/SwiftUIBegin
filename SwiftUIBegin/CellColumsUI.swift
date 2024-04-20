//
//  CellColumsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 20.04.2024.
//

import SwiftUI

struct CellColumsUI: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea().opacity(0.1)
            VStack {
                Grid {
                    GridRow {
                        Color.green.opacity(0.5)
                            .gridCellColumns(3)
                    }
                    GridRow {
                        Color.blue.opacity(0.5)
                        Color.red.opacity(0.5)
                            .gridCellColumns(2)
                    }
                    GridRow {
                        Color.blue.opacity(0.5)
                        Color.orange.opacity(0.5)
                        Color.red.opacity(0.5)
                    }
                    GridRow {
                        Color.orange.opacity(0.5)
                            .gridCellColumns(2)
                        Color.red.opacity(0.5)
                    }
                }
            }
        }
    }
}

struct CellColumsUI_Previews: PreviewProvider {
    static var previews: some View {
        CellColumsUI()
    }
}
