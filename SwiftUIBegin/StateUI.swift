//
//  StateUI.swift
//  SwiftUIBegin
//
//  Created by MP on 07.03.2024.
//

import SwiftUI

struct StateUI: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //Background
            //Color(.red)
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateUI_Previews: PreviewProvider {
    static var previews: some View {
        StateUI()
    }
}
