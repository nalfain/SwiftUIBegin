//
//  ListUI.swift
//  SwiftUIBegin
//
//  Created by MP on 15.03.2024.
//

import SwiftUI

struct ListUI: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "Banana", "Peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruits in
                        Text(fruits.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                   // .onMove { IndexSet, Int in
                     //   fruits.move(fromOffsets: IndexSet, toOffset: Int)
                    //} //Это делает тоже самое но без вынова в функцию.
                }
                Section("Vegetables") {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                .listStyle(.grouped) // не работает.
            }
            .navigationTitle("Grossery list")
            .toolbar() {
                HStack {
                    EditButton()
                    addButton
                }
            }
        }
    }
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    func delete (indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move (IndexSet: IndexSet, Int: Int) {
        fruits.move(fromOffsets: IndexSet, toOffset: Int)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListUI_Previews: PreviewProvider {
    static var previews: some View {
        ListUI()
    }
}
