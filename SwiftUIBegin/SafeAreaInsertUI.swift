//
//  SafeAreaInsertUI.swift
//  SwiftUIBegin
//
//  Created by MP on 14.04.2024.
//

import SwiftUI

struct SafeAreaInsertUI: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline) // type of navigation bar
            //Old version
//            .overlay(alignment: .bottom) {
//                Text("HI")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//            }
            //New version
            //Add to top
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil, content: {
                Text("HI")
                    .frame(maxWidth: .infinity)
                    //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                    //.clipShape(Circle())
                    //.padding()
            })
            //Add to bottom
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("HI")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
            
        }
    }
}

struct SafeAreaInsertUI_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsertUI()
    }
}
