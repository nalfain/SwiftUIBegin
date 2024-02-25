//
//  ForEachUI.swift
//  SwiftUIBegin
//
//  Created by gost on 25.02.2024.
//

import SwiftUI

struct ForEachUI: View {
    
    let data: [String] = ["HI","Hello","Helo again"]
    let mystring: String = "Hello"
    
    
    var body: some View {
        VStack {
            HStack {
                Text("ONE")
                Text("TWO")
                Text(verbatim: "THREE")
            }
            HStack {
                ForEach(0..<3) { index in
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index is: \(index)")
                }
            }
            HStack {
                ForEach(data.indices) { index in
//                    Text("NEW ITEM \(index)")
                    Text("\(data[index])-\(index)")
                }
            }
        }
    }
}

struct ForEachUI_Previews: PreviewProvider {
    static var previews: some View {
        ForEachUI()
    }
}
