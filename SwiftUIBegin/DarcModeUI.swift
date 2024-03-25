//
//  DarcModeUI.swift
//  SwiftUIBegin
//
//  Created by MP on 25.03.2024.
//

import SwiftUI

struct DarcModeUI: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("Thus color is red")
                        .foregroundColor(.red)
                    Text("This color is globaly adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Darc mode UI")
        }
        
    }
}

struct DarcModeUI_Previews: PreviewProvider {
    static var previews: some View {
            DarcModeUI()
    }
}
