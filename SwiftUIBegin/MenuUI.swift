//
//  MenuUI.swift
//  SwiftUIBegin
//
//  Created by MP on 16.04.2024.
//

import SwiftUI

struct MenuUI: View {
    var body: some View {
        Menu("Click Me...") {
            Button {
                //Action
            } label: {
                Text("One")
            }
            Button {
                //Action
            } label: {
                Text("Two")
            }
            Button {
                //Action
            } label: {
                Text("Three")
            }
            Button {
                //Action
            } label: {
                Text("Four")
            }
        }
    }
}

struct MenuUI_Previews: PreviewProvider {
    static var previews: some View {
        MenuUI()
    }
}
