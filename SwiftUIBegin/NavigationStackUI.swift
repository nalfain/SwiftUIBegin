//
//  NavigationStackUI.swift
//  SwiftUIBegin
//
//  Created by MP on 11.04.2024.
//

import SwiftUI

struct NavigationStackUI: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView{
                VStack (spacing: 40) {
                    
                    //Только в таких интересных случаях как в этой кнопке нам необходимо использовать путь. Обычно такие встречаются крайне редко.
                    Button("Super Button") {
                        stackPath.append(contentsOf: ["Max", "Tim", "Boom"
                            ])
                    }
                    
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        //New
                        NavigationLink(value: x) {
                            Text("Click me...\(x)")
                        }
//Old
//                        NavigationLink {
//                            mySecondView(value: x)
//                        } label: {
//                            Text("Click me...\(x)")
//                        }
                    }
                }
            }
            .navigationTitle("NavigationStack")
            .navigationDestination(for: Int.self) { value in
                mySecondView(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Anower screen \(value)")
            }
        }
    }
}

struct mySecondView: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}



struct NavigationStackUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackUI()
    }
}
