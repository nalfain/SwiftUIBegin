//
//  ContentMenuUI.swift
//  SwiftUIBegin
//
//  Created by MP on 20.03.2024.
//

import SwiftUI

struct ContentMenuUI: View {
    
    @State var backgroundCollor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("UI Butcamp")
                .font(.headline)
            Text("How to use content menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundCollor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                backgroundCollor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundCollor = .red
            } label: {
                Text("Report post")
            }
            Button {
                backgroundCollor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContentMenuUI_Previews: PreviewProvider {
    static var previews: some View {
        ContentMenuUI()
    }
}
