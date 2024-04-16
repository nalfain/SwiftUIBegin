//
//  GroupUI.swift
//  SwiftUIBegin
//
//  Created by MP on 16.04.2024.
//

import SwiftUI

struct GroupUI: View {
    var body: some View {
        
        VStack(spacing: 40) {
            Group {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.green)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
        .foregroundColor(.red)
    }
}

struct GroupUI_Previews: PreviewProvider {
    static var previews: some View {
        GroupUI()
    }
}
