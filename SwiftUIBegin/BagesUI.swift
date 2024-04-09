//
//  BagesUI.swift
//  SwiftUIBegin
//
//  Created by MP on 09.04.2024.
//

import SwiftUI
//.badge доступны только для
//For List
//For TabView
//For Tab bars


struct BagesUI: View {
    
    private var personName: String = "Max"
    
    var body: some View {
        VStack {
            Text("List")
            List {
                Text("Helow world!")
                    .badge("New Items")
                Text("Helow world!")
                    .badge(5)
                Text("Helow world! This is long message from the person. Bla bla bla la la la....")
                    .badge("From: \(personName)")
            }
            Text("---------------------------------------------------")
            Text ("TabView")
            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(5)
                Color.green
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge("New")
                Color.orange
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(1)
            }
        }
        
    }
}

struct BagesUI_Previews: PreviewProvider {
    static var previews: some View {
        BagesUI()
    }
}
