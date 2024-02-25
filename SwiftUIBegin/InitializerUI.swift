//
//  InitializerUI.swift
//  SwiftUIBegin
//
//  Created by gost on 21.02.2024.
//

import SwiftUI

struct InitializerUI: View {
    
    let backgroundColor: Color
    let count :Int
    let title :String
//Перечисление
    enum Fruit {
        case apple
        case orange
        case lemons
    }
// Илициализатор
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else {
            if fruit == .orange {
                self.title = "Oranges"
                self.backgroundColor = .orange
            }
            else {
                self.title = "Lemons"
                self.backgroundColor = .yellow
            }
        }
    }
    
    var body: some View {
        VStack (spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerUI_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerUI(count: 10, fruit: .orange)
            InitializerUI(count: 23, fruit: .apple)
            InitializerUI(count: 100, fruit: .lemons)
        }
    }
}
