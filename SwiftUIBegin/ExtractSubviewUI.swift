//
//  ExtractSubviewUI.swift
//  SwiftUIBegin
//
//  Created by MP on 08.03.2024.
//

import SwiftUI

struct ExtractSubviewUI: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
                .ignoresSafeArea(.all)
            ContentLayer
            }
        }
    var ContentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: Color.red)
            MyItem(title: "Oranges", count: 20, color: Color.orange)
            MyItem(title: "Bananas", count: 30, color: Color.yellow)
        }
    }
}

struct ExtractSubviewUI_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewUI()
    }
}
//делаем отдельную структуру когда контенст меняется если не меняется лучше сделать переменную в существующей структуре.
struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background {
            color
                .cornerRadius(10)
        }
    }
}
